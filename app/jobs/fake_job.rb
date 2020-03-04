class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "Im starting a new fake job"
    puts "Sent to queue"
    sleep 3
    puts "Job Completed"
  end
end
