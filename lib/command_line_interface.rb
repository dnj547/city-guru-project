require 'pry'
require 'colorize'
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
    puts `clear`
    a = Artii::Base.new
    puts "#{a.asciify('City Guru')}"
    puts "\n"
    puts "Hello! Welcome to City Guru.".cyan
    puts "Please enter your name to start.".cyan
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
    puts `clear`
    if user_exists?(user_name)
      puts "Welcome back to City Guru, #{user_name.capitalize}!".cyan
      puts "What would you like to do? Please enter a number.".cyan
    else
      puts "Hi, #{user_name.capitalize}. This is City Guru.".cyan
      puts "What would you like to do? Please enter a number.".cyan
    end
    puts "Type E to exit".magenta
    puts "1. Look at favorites"
    puts "2. Search for a city"
    puts "3. Fun facts"
  end


  def main_menu(user_name)
    puts `clear`
    valid_inputs = ["1", "2", "3", 'e', 'm']
    input = gets.chomp
    until valid_inputs.include? input.downcase do
      puts "Invalid input.".red
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
    puts `clear`
    puts "What city would you like to search for?".cyan
    puts "Type M for main menu, E to exit".magenta
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
      puts "What would you like to do next?".cyan
      puts "Type B to go back, M for main menu, E to exit".magenta
      puts "1. View salary data for this city"
      puts "2. View quality of life data for this city"
      puts "3. Add this city to my favorites"
      puts "4. Look at my favorites"

      valid_inputs = ['1', '2', '3', '4', 'e', 'm', 'b']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input.".red
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

        puts "====================================================="
        puts "What would you like to do next?".cyan
        puts "Type B to go back, M for main menu, E to exit".magenta
        valid_inputs = ['e', 'm', 'b']
        input = gets.chomp

        until valid_inputs.include? input.downcase do
          puts "Invalid input.".red
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

      elsif input == '3'
        save_to_favorites_menu(user_name, city_name)
      elsif input == '4'
        check_favorites(user_name)
      end
    else
      puts "====================================================="
      puts "Sorry, that's not a city in our database.".red
      puts "Please try again.".red
      city_search_menu(city_name)
    end
  end

  def exit_method
    puts `clear`
    puts "Good bye and see you again!".cyan
    exit!
  end


  def salary_data_menu(user_name, city_name)
    if data_exist?(city_name)
      puts "====================================================="
      puts "Please select a job title by its number.".cyan
      puts "Type B to go back, M for main menu, E to exit".magenta
      puts "1. QA Engineer"
      puts "2. Software Engineer"
      puts "3. UX Designer"
      puts "4. Web Designer"
      puts "5. Web Developer"

      valid_inputs = ["1", "2", "3", "4", "5", 'e', 'm', 'b']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input.".red
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
    puts "What would you like to do next?".cyan
    puts "Type B to go back, M for main menu, E to exit".magenta
    puts "1. Add this city to my favorites"
    valid_inputs = ['1', 'e', 'm', 'b']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input.".red
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
      puts "Please wait...".cyan
      arr = return_city_name_location_pop_score_safety(city_name)
      name = arr[0]
      location = arr[1]
      population = arr[2]
      score = arr[3]
      safety = arr[4]
      user = User.find_by(name: user_name.downcase)
      city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)

      if city_not_in_table?(city_name)
      # add the city and user to the cities table
        city = City.find_or_create_by!(name: name, location: location, population: population, teleport_score: score, safety_score: safety)

        if city_not_in_favorite?(user_name, city_name)

          # add the city to the user's favorites by adding a row to the favorites table
          favorite = Favorite.find_or_create_by!(user_id: user.id, city_id: city.id)

          puts "====================================================="
          puts "#{name} has been successfully added to your favorites!".green
          puts "====================================================="
          puts "What would you like to do now? Please enter a number.".cyan
          puts "Type M for main menu, E to exit".magenta
          puts "1. Look at my favorites"

          valid_inputs = ['1', 'e', 'm', 'b']
          input = gets.chomp

          until valid_inputs.include? input.downcase do
            puts "Invalid input.".red
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
          puts "This city is already in your favorites.".red
          puts "====================================================="
          puts "Type B to go back, M for main menu, E to exit".magenta

          valid_inputs = ['b', 'e', 'm']
          input = gets.chomp

          until valid_inputs.include? input.downcase do
            puts "Invalid input.".red
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
          favorite = Favorite.create!(user_id: user.id, city_id: city.id)

          puts "====================================================="
          puts "#{name} has been successfully added to your favorites!".green
          puts "====================================================="
          puts "What would you like to do now? Please enter a number.".cyan
          puts "Type M for main menu, E to exit".magenta
          puts "1. Look at my favorites"

          valid_inputs = ['1', 'e', 'm', 'b']
          input = gets.chomp

          until valid_inputs.include? input.downcase do
            puts "Invalid input.".red
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
          puts "This city is already in your favorites.".red
          puts "====================================================="
          puts "Type B to go back, M for main menu, E to exit".magenta

          valid_inputs = ['b', 'e', 'm']
          input = gets.chomp

          until valid_inputs.include? input.downcase do
            puts "Invalid input.".red
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
      puts "Sorry, you can't add this city to your favorites.".red
      puts "====================================================="
      puts "Type B to go back, M for main menu, E to exit".magenta

      valid_inputs = ['b', 'e', 'm']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input.".red
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
    user = User.find_by(name: user_name.downcase)
    user.favorites.empty?
  end

  def check_favorites(user_name)
    puts "====================================================="
    if no_favorites?(user_name)
      puts "You don't have any favorites!".cyan
      puts "Type M for main menu, E to exit".magenta

      valid_inputs = ['e', 'm']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input.".red
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
      puts `clear`
      puts "These are your favorite cities!".cyan
      puts "Type M for main menu, E to exit".magenta
      i = 1
      favorites.each do |favorite|
        city = City.find_by(id: favorite.city_id)
        puts "#{i}. #{city.name}"
        i += 1
      end
      valid_inputs = ['e', 'm']
      input = gets.chomp

      until valid_inputs.include? input.downcase do
        puts "Invalid input.".red
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
    puts "Sorry, the data is not available for this city.".red
    puts "====================================================="
    puts "What would you like to do next?".cyan
    puts "Type B to go back, M for main menu, E to exit".magenta
    valid_inputs = ['e', 'm', 'b']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input.".red
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
    puts `clear`
    puts "Do you know the answers to these questions? Select a question by its number to see the answer.".cyan
    puts "Type M for main menu, E to exit".magenta
    puts "1. Overall, which city in our database has the highest average quality of life score?"
    puts "2. Overall, which city in our database is the safest?"
    puts "3. Which users have the most favorites on City Guru?"
    puts "4. Out of my favorites list, which city has the highest average quality of life score?"

    valid_inputs = ['1', '2', '3', '4', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input.".red
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
    puts "#{city.name} is the best city in our database!".green
    puts "It has an average quality of life score of #{score} out of 100.".green
    puts "============================================="
    puts "Type B to go back, M for main menu, E to exit".magenta

    valid_inputs = ['b', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input.".red
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
    puts "#{city.name} is the safest city in our database!".green
    puts "It has a safety score of #{score} out of 10.".green
    puts "============================================="
    puts "Type B to go back, M for main menu, E to exit".magenta

    valid_inputs = ['b', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input.".red
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
    puts "<TOP 3 users>".cyan
    favorite = Favorite.group(:user_id).order('count_id DESC').limit(3).count(:id)
    i = 1
    favorite.each do |k, v|
      user = User.find_by(id: k)
      user_name = user.name.capitalize
       puts "#{i}. #{user_name} has #{v} favorite(s)".cyan
       i += 1
    end

    puts "====================================================="
    puts "Type B to go back, M for main menu, E to exit".magenta

    valid_inputs = ['b', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input.".red
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
    favorites ||= user.favorites
    best_favorite ||= favorites.max_by {|favorite| City.find_by(id: favorite.city_id).teleport_score}
    city ||= City.find_by(id: best_favorite.city_id)
    score = city.teleport_score

    puts "The best city in your favorites list is #{city.name}.".green
    puts "It has an average quality of life score of #{score} out of 100.".green
    puts "====================================================="
    puts "Type B to go back, M for main menu, E to exit".magenta

    valid_inputs = ['b', 'e', 'm']
    input = gets.chomp

    until valid_inputs.include? input.downcase do
      puts "Invalid input.".red
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
