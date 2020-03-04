namespace :user do
  desc "Running Chuck Norris"
  task :update_all => :environment do
    users = User.all
    puts "Adding quotes to all users"
    users.each do |user|
      UpdateuserJob.perform_later(user.id)
    end
  end
end
