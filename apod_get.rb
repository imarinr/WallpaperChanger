# apod_get.rb

require 'httparty'

def apod
  response = HTTParty.get("https://api.nasa.gov/planetary/apod?api_key=#{ENV['APOD_KEY']}")
  puts response.code
  return response
end
