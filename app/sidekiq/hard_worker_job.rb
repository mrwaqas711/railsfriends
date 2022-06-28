class HardWorkerJob
  include Sidekiq::Job

  def perform(text, sec)
    sleep sec
    puts "#{text} after sleeping #{sec} seconds"
  end
end
