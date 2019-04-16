require 'rest-client'
require 'json'
require 'pry'

def city_info(city_name)

  # showing list of cities and searching through them for the city name
  url = 'https://api.teleport.org/api/cities/?search=' + city_name
  response_string = RestClient.get(url)

  # initial search result for the city name
  response_hash = JSON.parse(response_string)

  # url to see the selected city information
  city_url = response_hash["_embedded"]["city:search-results"][0]["_links"]["city:item"]["href"]

  # getting basic city information
  new_response_string = RestClient.get(city_url)
  new_response_hash = JSON.parse(new_response_string)
end
0
