def welcome
  puts "Hello! Welcome to City Guru"
  puts "Please enter your name to start:"
end

def find_or_create_user(user_name)
  if user_exists?(user_name)
    welcome_message(user_name)
  else
    welcome_message(user_name)
    User.find_or_create_by(name: user_name)
  end
end


###################### HELPER METHODS ######################

def gets_input
  input = gets.chomp
end

def user_exists?(user_name)
  # returns true if user exists in users table, false if they do not
  !User.find_by(name: user_name).nil?
end


###################### MENU METHODS ######################

def welcome_message(user_name)
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



def main_menu_options(user_name)
  valid_inputs = ["1", "2", "3", 'e', 'm']
  input = gets.chomp
  until valid_inputs.include? input.downcase do
    puts "Invalid input. Please select a number from the menu."
    input = gets.chomp
  end
  if input == "1"
    # move to favorites
  elsif input == "2"
    # move to search for city
  elsif input == "3"
    # move to fun facts
  elsif input.downcase == 'e'
    exit_method
  elsif input.downcase == 'm'
    welcome_message(user_name)
  end
end


def exit_method
  puts "Good bye and see you again!"
  exit!
end


# def city_info_menu(selection)
#   if selection == 1
#
#   elsif selection == 2
#
#   elsif selection == 3
#   elsif selection == 4
#   elsif
#     selection == 5
#     exit!
#   end
# end

# def salary_data_menu(selection)
#
# end
#
# def check_favorites
#
# end
#
# def save_favorites
#
# end

###################### MENU METHODS ######################
