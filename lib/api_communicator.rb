require 'rest-client'
require 'json'
require 'pry'

# actual method
def display_city_info(city_name)
  # showing list of cities and searching through them for the city name
  # search function is smart enough to find whichever city is closest to the city name entered
  if valid_city?(city_name)
    readable_city_info(city_name)
    
  else
    puts "============================================="
    puts "No results found. Please try again."
    puts "============================================="
  end
end

###################### HELPER METHODS ######################

def get_city_info(city_name)
  url = 'https://api.teleport.org/api/cities/?search=' + city_name
  response_string = RestClient.get(url)

  # initial search result for the city name
  response_hash = JSON.parse(response_string)

  city_url = response_hash["_embedded"]["city:search-results"][0]["_links"]["city:item"]["href"]

  # getting basic city information in hash form
  new_response_string = RestClient.get(city_url)
  new_response_hash = JSON.parse(new_response_string)
end

def readable_city_info(city_name)
  city_hash = get_city_info(city_name)
  name = city_hash["name"]
  location =  city_hash["full_name"].split(", ")[1..-1].join(", ")
  population =  city_hash["population"]
  puts "============================================="
  puts name
  puts "Location: #{location}"
  puts "Population: #{population}"
  puts "============================================="
end

def valid_city?(city_name)
  url = 'https://api.teleport.org/api/cities/?search=' + city_name
  response_string = RestClient.get(url)

  # initial search result for the city name
  response_hash = JSON.parse(response_string)

  #returns true if at least 1 search result is found
  response_hash["_embedded"]["city:search-results"] != []
end

###################### HELPER METHODS ######################
