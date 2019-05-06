require 'rest-client'
require 'json'
require 'pry'

# What methods are in this file:
# =============================================
# display_city_info(city_name)
# display_median_salary(city_name, job_title)
# display_quality_of_life(city_name)
# get_quality_of_life(city_name)
# get_city_info(city_name)
# return_city_name(city_name)
# return_city_location(city_name)
# return_city_population(city_name)
# return_city_score(city_name)
# return_safety_score(city_name)
# readable_city_info(city_name)
# valid_city?(city_name)
# data_exist?(city_name)
# =============================================

def display_city_info(city_name)
  # showing list of cities and searching through them for the city name
  # search function is smart enough to find whichever city is closest to the city name entered
  if valid_city?(city_name)
    readable_city_info(city_name)
  else
    puts "====================================================="
    puts "No results found. Please try again."
  end
end

def display_median_salary(city_name, job_title)
    # look at the city's information
  response_hash = get_city_info(city_name)
  real_city_name = return_city_name(city_name)
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

  salary_formatted = median_salary.round(2).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse

  puts "====================================================="
  puts "Median salary for #{job_title} in #{real_city_name} is $#{salary_formatted}"
end

def display_quality_of_life(city_name)
  if data_exist?(city_name)
    data = get_quality_of_life(city_name)
    puts "====================================================="
    puts "<All scores are out of 10>"
    data["categories"].each do |category|
      name = category["name"]
      score = category["score_out_of_10"]
      puts "#{name}: #{score.round(2)}"
    end
  end
end

def get_quality_of_life(city_name)
  # look at the city's information
  response_hash = get_city_info(city_name)

  # find the urban area it belongs to
  url = response_hash["_links"]["city:urban_area"]["href"]
  response_string = RestClient.get(url)
  new_response_hash = JSON.parse(response_string)

  # go to quality of life data link
  new_url = new_response_hash["_links"]["ua:scores"]["href"]
  new_response_string = RestClient.get(new_url)
  third_response_hash = JSON.parse(new_response_string)
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

def return_city_score(city_name)
  # get to the cities > urban area page
  # get to ua:scores page
  # get telepoert_score
  city_info = get_city_info(city_name)
  url = city_info["_links"]["city:urban_area"]["href"]
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)

  new_url = response_hash["_links"]["ua:scores"]["href"]
  new_response_string = RestClient.get(new_url)
  new_response_hash = JSON.parse(new_response_string)

  new_response_hash["teleport_city_score"]
end

def return_safety_score(city_name)
  city_info = get_city_info(city_name)
  url = city_info["_links"]["city:urban_area"]["href"]
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)

  new_url = response_hash["_links"]["ua:scores"]["href"]
  new_response_string = RestClient.get(new_url)
  new_response_hash = JSON.parse(new_response_string)

  safety = new_response_hash["categories"].find do |category|
    category["name"] == "Safety"
  end
  safety["score_out_of_10"]
end

def return_city_name_location_pop_score_safety(city_name)
  city_info ||= get_city_info(city_name)
  name ||= city_info["name"]
  location ||= city_info["full_name"].split(", ")[1..-1].join(", ")
  population ||= city_info["population"]

  if data_exist?(city_name)

    url ||= city_info["_links"]["city:urban_area"]["href"]
    response_string ||= RestClient.get(url)
    response_hash ||= JSON.parse(response_string)

    new_url ||= response_hash["_links"]["ua:scores"]["href"]
    new_response_string ||= RestClient.get(new_url)
    new_response_hash ||= JSON.parse(new_response_string)

    city_score ||= new_response_hash["teleport_city_score"]

    safety ||= new_response_hash["categories"].find do |category|
      category["name"] == "Safety"
    end
    safety_score ||= safety["score_out_of_10"]

  else
    city_score = nil
    safety_score = nil
  end

  arr = [name, location, population, city_score, safety_score]
end

def readable_city_info(city_name)
  city_hash = get_city_info(city_name)
  name = city_hash["name"]
  location =  city_hash["full_name"].split(", ")[1..-1].join(", ")
  population =  city_hash["population"].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  puts "====================================================="
  puts name
  puts "Location: #{location}"
  puts "Population: #{population}"
  puts "====================================================="
end

def valid_city?(city_name)
  url = 'https://api.teleport.org/api/cities/?search=' + city_name
  response_string = RestClient.get(url)

  # initial search result for the city name
  response_hash = JSON.parse(response_string)

  #returns true if at least 1 search result is found
  response_hash["_embedded"]["city:search-results"] != []
end

def data_exist?(city_name)
  data = get_city_info(city_name)
  !data["_links"]["city:urban_area"].nil?
end
