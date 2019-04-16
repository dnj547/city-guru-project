def welcome
  puts "Hello! Welcome to City Guru"
  puts "Please enter your name to start:"
end

def find_or_create_user(user_name)
  if user_exists?(user_name)
    output_if_user_exists(user_name)
  else
    User.find_or_create_by(name: user_name)
    output_if_user_does_not_exist(user_name)
  end
end

def check_favorites

end

def save_favorites
  
end


###################### HELPER METHODS ######################

def gets_input
  input = gets.chomp
end

def user_exists?(user_name)
  # returns true if user exists in users table, false if they do not
  !User.find_by(name: user_name).nil?
end

def output_if_user_exists(user_name)
  puts "Welcome back, #{user_name}! What would you like to do? Please enter a number."
  puts "1) See my favorite cities"
  puts "2) Search for a city"
  puts "3) Fun facts"
  puts "4) Exit"

end

def output_if_user_does_not_exist(user_name)
  puts "Hi, #{user_name}. This is City Guru. What would you like to do? Please enter a number."
  puts "1) Search for a city"
  puts "2) Fun facts"
  puts "3) Exit"
end

def menu_selection(selection)
  if gets_input == 1

  elsif gets_input == 2

  elsif gets_input == 3

  elsif gets_input == 4

  elsif
    gets_input == 5
    exit!
  end
end

###################### HELPER METHODS ######################
