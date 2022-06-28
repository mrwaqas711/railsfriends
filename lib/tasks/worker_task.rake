# task my_first_task: :environment do
#   HardWorkerJob.perform_async("easy")
# end

# namespace :my_task do
desc "TODO"
task :my_first_task => :environment do
  HardWorkerJob.perform_async("easy work for me", 20)
end

desc "TODO"
task :my_second_task => :environment do
  HardWorkerJob.perform_async("super_hard work for me", 30)
end
desc 'say hello'
task :say_hello => :environment do
  HardWorkerJob.perform_async("Hello world", 10)
end
desc 'say hello'
task :batch_worker => :environment do
  SampleWorkerJob.perform_async
end
desc 'cluster'
task :cluster_job => :environment do
  CreateClusterJob.perform_async
end
# end