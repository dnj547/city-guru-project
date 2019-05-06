danielle = User.find_or_create_by!(name: "danielle")
dan = User.find_or_create_by!(name: "dan")
alexis = User.find_or_create_by!(name: "alexis")
alison = User.find_or_create_by!(name: "alison")
john = User.find_or_create_by!(name: "john")
johanna = User.find_or_create_by!(name: "johanna")
george = User.find_or_create_by!(name: "george")
elsa = User.find_or_create_by!(name: "elsa")
garrett = User.find_or_create_by!(name: "garrett")
sierra = User.find_or_create_by!(name: "sierra")


city_name = "Aarhus"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Adelaide"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Albuquerque"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Almaty"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Amsterdam"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Anchorage"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Andorra"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Ankara"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Asheville"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Asuncion"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Athens"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Atlanta"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Auckland"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Austin"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Baku"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bali"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Baltimore"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bangkok"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Barcelona"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Beijing"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Beirut"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Belfast"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Belgrade"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Belize City"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bengaluru"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bergen"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Berlin"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bern"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bilbao"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Birmingham"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Birmingham, AL"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bogota"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Boise"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bologna"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bordeaux"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Boston"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Boulder"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bozeman"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bratislava"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Brighton"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Brisbane"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bristol"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Brno"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Brussels"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Bucharest"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Budapest"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Buenos Aires"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Buffalo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cairo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Calgary"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cambridge"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cape Town"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Caracas"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cardiff"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Casablanca"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Charleston"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Charlotte"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Chattanooga"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Chennai"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Chiang Mai"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Chicago"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Chisinau"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Christchurch"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cincinnati"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cleveland"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cluj-Napoca"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cologne"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Colorado Springs"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Columbus"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Copenhagen"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Cork"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Curitiba"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Dallas"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Dar es Salaam"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Delhi"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Denver"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Des Moines"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Detroit"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Doha"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Dresden"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Dubai"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Dublin"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Dusseldorf"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Edinburgh"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Edmonton"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Eindhoven"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Eugene"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Florence"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Florianopolis"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Fort Collins"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Frankfurt"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Fukuoka"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Galway"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Gdansk"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Geneva"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Gibraltar"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Glasgow"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Gothenburg"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Grenoble"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Guadalajara"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Guatemala City"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Halifax"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Hamburg"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Hannover"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Havana"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Helsinki"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Ho Chi Minh City"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Hong Kong"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Honolulu"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Houston"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Hyderabad"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Indianapolis"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Innsbruck"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Istanbul"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Jacksonville"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Jakarta"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Johannesburg"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Kansas City"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Karlsruhe"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Kathmandu"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Kiev"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Kingston"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Knoxville"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Krakow"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Kuala Lumpur"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Kyoto"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Lagos"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "La Paz"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Las Palmas de Gran Canaria"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Las Vegas"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Lausanne"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Leeds"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Leipzig"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Lille"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Lima"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Lisbon"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Liverpool"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Ljubljana"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "London"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Los Angeles"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Louisville"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Luxembourg"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Lviv"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Lyon"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Madison"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Madrid"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Malaga"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Malmo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Managua"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Manchester"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Manila"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Marseille"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Medellin"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Melbourne"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Memphis"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Mexico City"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Miami"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Milan"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Milwaukee"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Minneapolis"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Minsk"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Montevideo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Montreal"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Moscow"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Mumbai"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Munich"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Nairobi"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Nantes"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Naples"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Nashville"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "New Orleans"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "New York"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Nice"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Nicosia"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Oklahoma City"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Omaha"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Orlando"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Osaka"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Oslo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Ottawa"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Oulu"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Oxford"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Palo Alto"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Panama"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Paris"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Perth"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Philadelphia"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Phnom Penh"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Phoenix"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Phuket"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Pittsburgh"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Portland, ME"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Portland, OR"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Porto"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Porto Alegre"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Prague"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Providence"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Quebec"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Quito"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Raleigh"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Reykjavik"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Richmond"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Riga"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Rio De Janeiro"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Riyadh"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Rochester"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Rome"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Rotterdam"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Saint Petersburg"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Salt Lake City"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "San Antonio"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "San Diego"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "San Francisco"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "San Jose"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "San Juan"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "San Luis Obispo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "San Salvador"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Santiago"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Santo Domingo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Sao Paulo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Sarajevo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Saskatoon"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Seattle"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Seoul"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Seville"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Shanghai"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Singapore"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Skopje"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Sofia"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "St. Louis"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Stockholm"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Stuttgart"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Sydney"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Taipei"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tallinn"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tampa"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tampere"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tartu"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tashkent"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tbilisi"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tehran"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tel Aviv"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "The Hague"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Thessaloniki"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tokyo"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Toronto"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Toulouse"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Tunis"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Turin"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Turku"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Uppsala"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Utrecht"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Valencia"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Valletta"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Vancouver"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Victoria"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Vienna"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Vilnius"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Warsaw"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Washington, D.C."
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Wellington"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Winnipeg"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Wroclaw"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Yerevan"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Zagreb"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end

city_name = "Zurich"
if !City.exists?(name: city_name)
  arr = return_city_name_location_pop_score_safety(city_name)
  if !arr.nil?
    name = arr[0]
    location = arr[1]
    population = arr[2]
    score = arr[3]
    safety = arr[4]
    city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  end
end
