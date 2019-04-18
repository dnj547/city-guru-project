require 'pry'

# What methods are in this file:
# welcome
# find_or_create_user(user_name)
# user_exists?(user_name)
# welcome_message(user_name)
# main_menu(user_name)
# city_search_menu(user_name)
# city_info_menu(user_name, city_name)
# exit_method
# salary_data_menu(user_name, city_name)
# median_salary_menu(user_name, city_name)
# save_to_favorites_menu(user_name, name_name)
# check_favorites(user_name)
# quality_of_life_menu(user_name, city_name)
# fun_facts_menu(user_name)

def welcome
  puts "Hello! Welcome to City Guru"
  puts "Please enter your name to start:"
end

def find_or_create_user(user_name)
  if user_exists?(user_name.downcase)
    welcome_message(user_name.capitalize)
  else
    welcome_message(user_name.capitalize)
    User.find_or_create_by(name: user_name.downcase)
  end
end


###################### HELPER METHODS ######################

def user_exists?(user_name)
  # returns true if user exists in users table, false if they do not
  !User.find_by(name: user_name.downcase).nil?
end

###################### MENU METHODS ######################


def welcome_message(user_name)
  puts "============================================="
  if user_exists?(user_name)
    puts "Welcome back to City Guru, #{user_name}! What would you like to do? Please enter a number."
  else
    puts "Hi, #{user_name}. This is City Guru. What would you like to do? Please enter a number."
  end
  puts "(Type E to exit)"
  puts "1. Look at favorites"
  puts "2. Search for a city"
  puts "3. Fun facts"
end


def main_menu(user_name)
  valid_inputs = ["1", "2", "3", 'e', 'm']
  input = gets.chomp
  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end
  if input == "1"
    check_favorites(user_name)
  elsif input == "2"
    city_search_menu(user_name)
  elsif input == "3"
    fun_facts_menu(user_name)
  elsif input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
  end
end

def city_search_menu(user_name)
  puts "============================================="
  puts "What city would you like to search for?"
  puts "(Type M to go back to the main menu)"
  puts "(Type E to exit)"
  input = gets.chomp
  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  else
    city_info_menu(user_name, input)
  end
end

def city_info_menu(user_name, city_name)
  if valid_city?(city_name)
    display_city_info(city_name)
    puts "What would you like to do next?"
    puts "(Type B to go back, M for main menu, E to exit)"
    puts "1. View salary data for this city"
    puts "2. View quality of life data for this city"
    puts "3. Add this city to my favorites"
    puts "4. Look at my favorites"

    valid_inputs = ['1', '2', '3', '4', 'e', 'm', 'b']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input. Please select a number from the menu."
      input = gets.chomp
    end
    if input.downcase == 'e'
      exit_method
    elsif input.downcase == 'm'
      welcome_message(user_name)
      main_menu(user_name)
    elsif input.downcase == 'b'
      city_search_menu(user_name)
    elsif input == '1'
      salary_data_menu(user_name, city_name)
    elsif input == '2'
      display_quality_of_life(city_name)
      quality_of_life_menu(user_name, city_name)
    elsif input == '3'
      save_to_favorites_menu(user_name, city_name)
    elsif input == '4'
      check_favorites(user_name)
    end
  else
    city_search_menu(city_name)
  end
end

def exit_method
  puts "============================================="
  puts "Good bye and see you again!"
  puts "============================================="
  exit!
end


def salary_data_menu(user_name, city_name)
  puts "============================================="
  puts "Please select a job title by its number."
  puts "(Type B to go back, M for main menu, E to exit)"
  puts "1. QA Engineer"
  puts "2. Software Engineer"
  puts "3. UX Designer"
  puts "4. Web Designer"
  puts "5. Web Developer"

  valid_inputs = ["1", "2", "3", "4", "5", 'e', 'm', 'b']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end

  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  elsif input.downcase == 'b'
    city_search_menu(user_name)
  else
    if input == '1'
      job_title = 'QA Engineer'
    elsif input == '2'
      job_title = 'Software Engineer'
    elsif input == '3'
      job_title = 'UX Designer'
    elsif input == '4'
      job_title = 'Web Designer'
    elsif input == '5'
      job_title = 'Web Developer'
    end
    puts display_median_salary(city_name, job_title)
    median_salary_menu(user_name, city_name)
  end
end

def median_salary_menu(user_name, city_name)
  puts "============================================="
  puts "What would you like to do next?"
  puts "(Type B to go back, M for main menu, E to exit)"
  puts "1. Add this city to my favorites"
  valid_inputs = ['1', 'e', 'm', 'b']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end
  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  elsif input.downcase == 'b'
    salary_data_menu(user_name, city_name)
  elsif input == '1'
    save_to_favorites_menu(user_name, city_name)
  end
end

def save_to_favorites_menu(user_name, city_name)
  # get city info from teleport API
  name = return_city_name(city_name)
  location = return_city_location(city_name)
  population = return_city_population(city_name)
  score = return_city_score(city_name)
  safety = return_safety_score(city_name)

  # add the city and user to the cities table
  city = City.find_or_create_by(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
  user = User.find_by(name: user_name.downcase)
  user_id = user.id
  new_city = City.find_by(name: name)
  new_city_id = new_city.id

  # add the city to the user's favorites by adding a row to the favorites table
  favorite = Favorite.find_or_create_by(user_id: user_id, city_id: new_city_id)

  puts "============================================="
  puts "#{name} has been successfully added to your favorites!"
  puts "What would you like to do now? Please enter a number"
  puts "(Type M for main menu, E to exit)"
  puts "1. Look at my favorites"

  valid_inputs = ['1', 'e', 'm', 'b']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end

  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  elsif input.downcase == 'b'
    city_search_menu(user_name)
  elsif input == '1'
    check_favorites(user_name)
  end
end

def check_favorites(user_name)
  puts "============================================="
  # puts User.find_by(name: user_name.downcase).favorites
  user = User.find_by(name: user_name.downcase)
  favorites = Favorite.where(user_id: user.id).all
  puts "These are your favorite cities!"
  puts "(Type M for main menu, E to exit)"
  i = 1
  favorites.each do |favorite|
    city = City.find_by(id: favorite.city_id)
    puts "#{i}. #{city.name}"
    i += 1
  end
  valid_inputs = ['e', 'm']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end

  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  end
end

def quality_of_life_menu(user_name, city_name)
  puts "============================================="
  puts "What would you like to do next?"
  puts "(Type B to go back, M for main menu, E to exit)"
  puts "1. Add this city to my favorites"
  valid_inputs = ['1', 'e', 'm', 'b']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end
  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  elsif input.downcase == 'b'
    city_info_menu(user_name, city_name)
  elsif input == '1'
    save_to_favorites_menu(user_name, city_name)
  end
end

def fun_facts_menu(user_name)
  puts "============================================="
  puts "Do you know the answers to these questions? Select a question by its number to see the answer."
  puts "(Type M for main menu, E to exit)"
  puts "1. Overall, which city has the highest total quality of life score?"
  puts "2. What is the safest city in the US?"
  puts "3. Which City Guru user has the most favorites in their favorites list?"
  puts "4. Out of my favorites list, which city has the highest total quality of life score?"

  valid_inputs = ['1', '2', '3', '4', 'e', 'm']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end
  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  elsif input == '1'
    best_city(user_name)
  elsif input == '2'
    safest_city(user_name)
  elsif input == '3'
    # user with most favorites
  elsif input == '4'
    # favorite city with highest total quality of life score
  end
end

def best_city(user_name)
  puts "============================================="
  score = City.maximum(:teleport_score)
  city = City.find_by(teleport_score: score)
  puts "#{city.name} is the best city in our database!"
  puts "It has a total quality of life score of #{score}."
  puts "============================================="
  puts "Type B to go back, M for main menu, E to exit"

  valid_inputs = ['b', 'e', 'm']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end
  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  elsif input.downcase == 'b'
    fun_facts_menu(user_name)
  end

end

def safest_city(user_name)
  puts "============================================="
  score = City.maximum(:safety_score)
  city = City.find_by(safety_score: score)
  puts "#{city.name} is the safest city in our database!"
  puts "It has a safety score of #{score}."
  puts "============================================="
  puts "Type B to go back, M for main menu, E to exit"

  valid_inputs = ['b', 'e', 'm']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end
  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu(user_name)
  elsif input.downcase == 'b'
    fun_facts_menu(user_name)
  end
end

###################### MENU METHODS ######################
