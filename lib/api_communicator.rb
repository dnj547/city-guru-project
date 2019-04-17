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
  end
end

def display_median_salary(city_name, job_title)
    # look at the city's information
  response_hash = get_city_info(city_name)

  # find the urban area it belongs to
  url = response_hash["_links"]["city:urban_area"]["href"]
  response_string = RestClient.get(url)
  new_response_hash = JSON.parse(response_string)

  # go to salary data link
  new_url = new_response_hash["_links"]["ua:salaries"]["href"]
  new_response_string = RestClient.get(new_url)
  third_response_hash = JSON.parse(new_response_string)

  # find median salary of job_title
  job_hash = third_response_hash["salaries"].select do |job|
    job["job"]["title"] == job_title
  end
  median_salary = job_hash.first["salary_percentiles"]["percentile_50"]


  puts "============================================="
  puts "Median salary for #{job_title} in #{city_name} is $#{median_salary.round(2)}"
  puts "============================================="

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

def return_city_name(city_name)
  city_hash = get_city_info(city_name)
  name = city_hash["name"]
end

def return_city_location(city_name)
  city_hash = get_city_info(city_name)
  location =  city_hash["full_name"].split(", ")[1..-1].join(", ")
end

def return_city_population(city_name)
  city_hash = get_city_info(city_name)
  population =  city_hash["population"]
end

# display_median_salary("new", "web developer")
# binding.pry


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
