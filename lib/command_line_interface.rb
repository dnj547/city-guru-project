require 'pry'

# What methods are in this file:
# =============================================
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
# data_unavailable_menu(user_name, city_name)
# fun_facts_menu(user_name)
# best_city(user_name)
# safest_city(user_name)
# user_with_most_favorites(user_name)
# best_city_for_user(user_name)
# =============================================

class CommandLineInterface

  def run
    welcome
    user_name = gets.chomp
    find_or_create_user(user_name)
    main_menu(user_name)
  end

  def welcome
    puts "Hello! Welcome to City Guru."
    puts "Please enter your name to start."
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
    puts "====================================================="
    if user_exists?(user_name)
      puts "Welcome back to City Guru, #{user_name.capitalize}!"
      puts "What would you like to do? Please enter a number."
    else
      puts "Hi, #{user_name.capitalize}. This is City Guru."
      puts "What would you like to do? Please enter a number."
    end
    puts "Type E to exit"
    puts "1. Look at favorites"
    puts "2. Search for a city"
    puts "3. Fun facts"
  end


  def main_menu(user_name)
    valid_inputs = ["1", "2", "3", 'e', 'm']
    input = gets.chomp
    until valid_inputs.include? input.downcase do
      puts "Invalid input."
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
    puts "====================================================="
    puts "What city would you like to search for?"
    puts "Type M for main menu, E to exit"
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
      puts "Type B to go back, M for main menu, E to exit"
      puts "1. View salary data for this city"
      puts "2. View quality of life data for this city"
      puts "3. Add this city to my favorites"
      puts "4. Look at my favorites"

      valid_inputs = ['1', '2', '3', '4', 'e', 'm', 'b']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input."
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
        data_unavailable_menu(user_name, city_name)
      elsif input == '3'
        save_to_favorites_menu(user_name, city_name)
      elsif input == '4'
        check_favorites(user_name)
      end
    else
      puts "====================================================="
      puts "Sorry, that's not a city in our database."
      puts "Please try again."
      city_search_menu(city_name)
    end
  end

  def exit_method
    puts "====================================================="
    puts "Good bye and see you again!"
    puts "====================================================="
    exit!
  end


  def salary_data_menu(user_name, city_name)
    if data_exist?(city_name)
      puts "====================================================="
      puts "Please select a job title by its number."
      puts "Type B to go back, M for main menu, E to exit"
      puts "1. QA Engineer"
      puts "2. Software Engineer"
      puts "3. UX Designer"
      puts "4. Web Designer"
      puts "5. Web Developer"

      valid_inputs = ["1", "2", "3", "4", "5", 'e', 'm', 'b']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input."
        input = gets.chomp
      end

      if input.downcase == 'e'
        exit_method
      elsif input.downcase == 'm'
        welcome_message(user_name)
        main_menu(user_name)
      elsif input.downcase == 'b'
        city_info_menu(user_name, city_name)
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
        display_median_salary(city_name, job_title)
        median_salary_menu(user_name, city_name)
      end
    else
      data_unavailable_menu(user_name, city_name)
    end

  end

  def median_salary_menu(user_name, city_name)
    puts "====================================================="
    puts "What would you like to do next?"
    puts "Type B to go back, M for main menu, E to exit"
    puts "1. Add this city to my favorites"
    valid_inputs = ['1', 'e', 'm', 'b']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input."
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

  # is this city not in the cities table?
  def city_not_in_table?(city_name)
    real_city_name = return_city_name(city_name)
    city = City.find_by(name: real_city_name)
    city.nil?
  end

  # is this city not in the user's favorites table?
  def city_not_in_favorite?(user_name, city_name)
    user = User.find_by(name: user_name.downcase)
    user_id = user.id
    real_city_name = return_city_name(city_name)
    city = City.find_by(name: real_city_name)
    city_id = city.id
    favorite = Favorite.where(user_id: user_id, city_id: city_id)
    favorite == []
  end

  def save_to_favorites_menu(user_name, city_name)
    # if the urban area data does not exist, we cannot add the city to the cities table, and we cannot add the city to the favorites table
    # if the urban area data exists, you can add the city to your favorites
    if data_exist?(city_name)
      # get city info from teleport API
      puts "Please wait..."
      name = return_city_name(city_name)
      location = return_city_location(city_name)
      population = return_city_population(city_name)
      score = return_city_score(city_name)
      safety = return_safety_score(city_name)

      if city_not_in_table?(city_name)
      # add the city and user to the cities table
        city = City.find_or_create_by(name: name, location: location, population: population, teleport_score: score, safety_score: safety)
        user = User.find_by(name: user_name.downcase)
        user_id = user.id
        city_id = city.id

        if city_not_in_favorite?(user_name, city_name)

          # add the city to the user's favorites by adding a row to the favorites table
          favorite = Favorite.find_or_create_by(user_id: user_id, city_id: city_id)

          puts "====================================================="
          puts "#{name} has been successfully added to your favorites!"
          puts "What would you like to do now? Please enter a number."
          puts "Type M for main menu, E to exit"
          puts "1. Look at my favorites"

          valid_inputs = ['1', 'e', 'm', 'b']
          input = gets.chomp

          until valid_inputs.include? input.downcase do
            puts "Invalid input."
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
        else
          puts "====================================================="
          puts "This city is already in your favorites."
          puts "====================================================="
          puts "Type B to go back, M for main menu, E to exit"

          valid_inputs = ['b', 'e', 'm']
          input = gets.chomp

          until valid_inputs.include? input.downcase do
            puts "Invalid input."
            input = gets.chomp
          end
          if input.downcase == 'e'
            exit_method
          elsif input.downcase == 'm'
            welcome_message(user_name)
            main_menu(user_name)
          elsif input.downcase == 'b'
            city_info_menu(user_name, city_name)
          end
        end
      else
        if city_not_in_favorite?(user_name, city_name)
          favorite = Favorite.find_or_create_by(user_id: user_id, city_id: city_id)

          puts "====================================================="
          puts "#{name} has been successfully added to your favorites!"
          puts "What would you like to do now? Please enter a number."
          puts "Type M for main menu, E to exit"
          puts "1. Look at my favorites"

          valid_inputs = ['1', 'e', 'm', 'b']
          input = gets.chomp

          until valid_inputs.include? input.downcase do
            puts "Invalid input."
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
        else
          puts "====================================================="
          puts "This city is already in your favorites."
          puts "====================================================="
          puts "Type B to go back, M for main menu, E to exit"

          valid_inputs = ['b', 'e', 'm']
          input = gets.chomp

          until valid_inputs.include? input.downcase do
            puts "Invalid input."
            input = gets.chomp
          end
          if input.downcase == 'e'
            exit_method
          elsif input.downcase == 'm'
            welcome_message(user_name)
            main_menu(user_name)
          elsif input.downcase == 'b'
            city_info_menu(user_name, city_name)
          end
        end
      end
    else
      puts "====================================================="
      puts "Sorry, you can't add this city to your favorites."
      puts "====================================================="
      puts "Type B to go back, M for main menu, E to exit"

      valid_inputs = ['b', 'e', 'm']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input."
        input = gets.chomp
      end
      if input.downcase == 'e'
        exit_method
      elsif input.downcase == 'm'
        welcome_message(user_name)
        main_menu(user_name)
      elsif input.downcase == 'b'
        city_info_menu(user_name, city_name)
      end
    end
  end

  def no_favorites?(user_name)
    user = User.find_by(name: user_name)
    user_id = user.id
    favorites = Favorite.find_by(user_id: user_id)
    favorites.nil?
  end

  def check_favorites(user_name)
    puts "====================================================="
    if no_favorites?(user_name)
      puts "You don't have any favorites!"
      puts "Type M for main menu, E to exit"

      valid_inputs = ['e', 'm']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input."
        input = gets.chomp
      end
      if input.downcase == 'e'
        exit_method
      elsif input.downcase == 'm'
        welcome_message(user_name)
        main_menu(user_name)
      end
    else
      # puts User.find_by(name: user_name.downcase).favorites
      user = User.find_by(name: user_name.downcase)
      favorites = Favorite.where(user_id: user.id).all
      puts "These are your favorite cities!"
      puts "Type M for main menu, E to exit"
      i = 1
      favorites.each do |favorite|
        city = City.find_by(id: favorite.city_id)
        puts "#{i}. #{city.name}"
        i += 1
      end
      valid_inputs = ['e', 'm']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input."
        input = gets.chomp
      end

      if input.downcase == 'e'
        exit_method
      elsif input.downcase == 'm'
        welcome_message(user_name)
        main_menu(user_name)
      end
    end
  end

  def data_unavailable_menu(user_name, city_name)
    puts "====================================================="
    puts "Sorry, the data is not available for this city."
    puts "====================================================="
    puts "What would you like to do next?"
    puts "Type B to go back, M for main menu, E to exit"
    valid_inputs = ['e', 'm', 'b']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input."
      input = gets.chomp
    end
    if input.downcase == 'e'
      exit_method
    elsif input.downcase == 'm'
      welcome_message(user_name)
      main_menu(user_name)
    elsif input.downcase == 'b'
      city_info_menu(user_name, city_name)
    end
  end

  def fun_facts_menu(user_name)
    puts "============================================="
    puts "Do you know the answers to these questions? Select a question by its number to see the answer."
    puts "Type M for main menu, E to exit"
    puts "1. Overall, which city in our database has the highest average quality of life score?"
    puts "2. Overall, which city in our database is the safest?"
    puts "3. Which users have the most favorites on City Guru?"
    puts "4. Out of my favorites list, which city has the highest average quality of life score?"

    valid_inputs = ['1', '2', '3', '4', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input."
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
      user_with_most_favorites(user_name)
    elsif input == '4'
      best_city_for_user(user_name)
    end
  end

  def best_city(user_name)
    puts "============================================="
    score = City.maximum(:teleport_score)
    city = City.find_by(teleport_score: score)
    puts "#{city.name} is the best city in our database!"
    puts "It has an average quality of life score of #{score} out of 100."
    puts "============================================="
    puts "Type B to go back, M for main menu, E to exit"

    valid_inputs = ['b', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input."
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
    puts "It has a safety score of #{score} out of 10."
    puts "============================================="
    puts "Type B to go back, M for main menu, E to exit"

    valid_inputs = ['b', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input."
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

  def user_with_most_favorites(user_name)
    puts "============================================="
    # go thru favorites
    # find the most frequent user_id
    puts "<TOP 3 users>"
    favorite = Favorite.group(:user_id).order('count_id DESC').limit(3).count(:id)
    i = 1
    favorite.each do |k, v|
      user = User.find_by(id: k)
      user_name = user.name.capitalize
       puts "#{i}. #{user_name} has #{v} favorite(s)"
       i += 1
    end

    puts "====================================================="
    puts "Type B to go back, M for main menu, E to exit"

    valid_inputs = ['b', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input."
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



  def best_city_for_user(user_name)
    # find all of the user's favorite cities
    # of those cities, find the one with the highest teleport score
    puts "====================================================="
    user = User.find_by(name: user_name.downcase)
    favorites = Favorite.where(user_id: user.id).all
    cities = favorites.map do |favorite|
      City.find_by(id: favorite.city_id)
    end
    scores = cities.map do |city|
      city.teleport_score
    end
    city = City.find_by(teleport_score: scores.max)
    score = city.teleport_score
    puts "The best city in your favorites list is #{city.name}."
    puts "It has an average quality of life score of #{score} out of 100."
    puts "====================================================="
    puts "Type B to go back, M for main menu, E to exit"

    valid_inputs = ['b', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input."
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
end
