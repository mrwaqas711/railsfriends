class DummyWorkerJob
  include Sidekiq::Worker
  # sidekiq_options queue: 'batches'

  def perform(dummy_id)
    i = rand(1...7)
    sleep i
    puts "DONE FOR #{dummy_id}"
  end

  def on_success(status, options)
    puts 'Batch processing ended'
    Rails.cache.write(options['bid'], 'complete')
  end

  def self.dummy_task
    puts 'Batch processing started'
    batch = Sidekiq::Batch.new
    batch.on(:success, self, 'bid' => batch.bid)
    batch.jobs do
      (1...8).to_a.each do |dummy_id|
        DummyWorkerJob.perform_async(dummy_id)
      end
    end
    sleep 2 until Rails.cache.read(batch.bid) == 'complete'
  end
end