# apod_main.rb

require 'json'
require 'down'
require_relative './apod_get.rb'

puts 'APOD wallpaper'
puts 'Getting APOD info...'

# TODO: check last date

response = apod

if response.code == 200
  result = JSON.parse(response.body.to_s)
  puts "Downloading image to #{ENV['WALLPAPERS_FOLDER']}..."
  Down.download(result['hdurl'], destination: ENV['WALLPAPERS_FOLDER'])
  puts 'Finished, you\'ll see it soon'
else
  puts "Something went wrong, response is: #{response}"
end
