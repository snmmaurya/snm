class InxWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'critical'

  def perform(*args)
    # Your background job logic here
    puts "Processing critical task with args: #{args}"
  end
end
