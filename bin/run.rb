require_relative '../config/environment'
require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"

welcome

# input and gets the user name
user_name = gets_input
find_or_create_user(user_name)

# search and gets the city info
city_name = gets_input
city_info(city_name)


selection = gets_input
menu_selection(selection)
