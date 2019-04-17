require 'pry'

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
  puts "============================================="
end


def main_menu(user_name)
  valid_inputs = ["1", "2", "3", 'e', 'm']
  input = gets.chomp
  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end
  if input == "1"
    # move to favorites
  elsif input == "2"
    city_search_menu(user_name)
  elsif input == "3"
    # move to fun facts
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
    main_menu_options(user_name)
  else
    city_info_menu(input, user_name)
  end
end

def city_info_menu(city_name, user_name)
  display_city_info(city_name)
  puts "what would you like to do next?"
  puts "1. View salary data for this city"
  puts "2. View quality of life data for this city"
  puts "3. Add this city to my favorites"
  puts "4. Look at my favorites"
  puts "(Type B to go back, M for main menu, E to exit)"

  valid_inputs = ["1", "2", "3","4", 'e', 'm', 'b']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end

  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu_options(user_name)
  elsif input.downcase == 'b'
    city_search_menu(user_name)
  elsif input == '1'
    # move to salary data
    salary_data_menu(city_name)
  elsif input == '2'
    # move to quality of life data
  elsif input == '3'
    save_to_favorites_menu(city_name, user_name)
  elsif input == '4'
    # move to favorites
  end
end

def exit_method
  puts "============================================="
  puts "Good bye and see you again!"
  puts "============================================="
  exit!
end


def salary_data_menu(city_name)
  puts "============================================="
  puts "Please select a job title by its number."
  puts "(Type B to go back, M for main menu, E to exit)"
  puts "1. QA Engineer"
  puts "2. Software Engineer"
  puts "3. UX Designer"
  puts "4. Web Designer"
  puts "5. Web Developer"
  puts "============================================="

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
    main_menu_options(user_name)
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
  end
end

def save_to_favorites_menu(city_name, user_name)
  # add the city to the cities table
  # add the city to the user's favorites by adding a row to the favorites table
  name = return_city_name(city_name)
  location = return_city_location(city_name)
  population = return_city_population(city_name)
  city = City.find_or_create_by(name: city_name, location: location, population: population)
  user_id = User.find_by(name: user_name)
  city_id = City.find_by(name: city_name)
  Favorite.find_or_create_by(user_id: user_id, city_id: city_id)

  puts "#{name} has been successfully added to your favorites!"
  puts "What would you like to do now? Please enter a number"
  puts "(Type M for main menu, E to exit)"
  puts "1. Look at my favorites"

  valid_inputs = ["1", 'e', 'm']
  input = gets.chomp

  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end

  if input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
    main_menu_options(user_name)
  elsif input.downcase == 'b'
    city_search_menu(user_name)
  else
    if input == '1'
      # move to my favorites
    end
  end
end




def check_favorites

end



###################### MENU METHODS ######################
