def welcome
  puts "Hello! Welcome to City Guru"
  puts "Please enter your name to start:"
end

def gets_user_name
  input = gets.chomp
end

def user_exists?
  # returns true if user exists in users table, false if they do not
  !User.find_by(name: gets_user_name).nil?
end

def output_if_user_exists
  puts "Welcome back! What would you like to do? Please enter a number."
  puts "1) See my favorite cities"
  puts "2) Search for a city"
  puts "3) Fun facts"
  puts "4) Go back"
  puts "5) Exit"
end

def output_if_user_does_not_exist
  puts "Hi, #{gets_user_name}. This is City Guru. What would you like to do? Please enter a number."
  puts "1) Search for a city"
  puts "2) Fun facts"
  puts "3) Go back"
  puts "4) Exit"
end

def find_or_create_user
  if user_exists?
    output_if_user_exists
  else
    User.find_or_create_by(name: user_name)

  end
end
