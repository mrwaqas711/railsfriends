class CreateClusterJob
  include Sidekiq::Worker

  def on_success(status, options)
    puts "_commentssssssssssssssssssssssssss___"
    puts status, options
    puts "Created cluster done."
  end

  def perform
    batch = Sidekiq::Batch.new
    batch.description = "Creating Cluster"
    batch.on(:success, CreateClusterJob, 'bid' => batch.bid)
    batch.jobs do
      5.times do
      |i|
        CreateServerJob.perform_async(i)
      end
    end
  end

end