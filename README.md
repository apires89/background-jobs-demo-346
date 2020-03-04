Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


require 'json'
require 'open-uri'
require 'byebug'

class ChuckNorris
  def call
    url = "https://api.chucknorris.io/jokes/random"
    response = open(url).read
    result = JSON.parse(response)
    quote = result['value']
    p quote
  end
end

ChuckNorris.new.call
