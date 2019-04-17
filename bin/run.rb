require_relative '../config/environment'
require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"


welcome
user_name = gets.chomp
find_or_create_user(user_name)
main_menu_options(user_name)
