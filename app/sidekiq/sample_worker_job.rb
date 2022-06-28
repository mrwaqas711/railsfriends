class SampleWorkerJob
  include Sidekiq::Worker

  def perform
    puts 'SOME LONG RUNNING TASK BEFORE'
    DummyWorkerJob.dummy_task
    puts 'SOME LONG RUNNING TASK AFTER'
  end
end