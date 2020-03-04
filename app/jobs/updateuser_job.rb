require 'json'
require 'open-uri'

class UpdateuserJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    # get user
    user = User.find(user_id)
    #run api call
    url = "https://api.chucknorris.io/jokes/random"
    open_url = open(url).read
    response = JSON.parse(open_url)
    result = response['value']
    #update user
    user.quote = result
    user.save
  end
end
