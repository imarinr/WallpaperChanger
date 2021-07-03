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
  if result['media_type'].downcase != 'image'
    puts 'There are no picture today, thanks for coming!!'
  else
    puts "Downloading image from #{result['hdurl']}\n to #{ENV['WALLPAPERS_FOLDER']}..."
    Down.download(result['hdurl'], destination: ENV['WALLPAPERS_FOLDER'])
    puts 'Finished, you\'ll see it soon'
  end
else
  puts "Something went wrong, response is: #{response}"
end
