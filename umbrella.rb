require "http"

pirate_weather_api_key = ENV.fetch("PIRATE_WEATHER_KEY")

pirate_weather_url= "https://api.pirateweather.net/forecast/"+pirate_weather_api_key+"/41.8887,-87.6355"


raw_response = HTTP.get(pirate_weather_url)

require "json"

parsed_response = JSON.parse(raw_response)

currently_hashed = parsed_response.fetch("currently")
current_temp = currently_hashed.fetch("temperature")
puts "The current temperature is " + current_temp.to_s + "."