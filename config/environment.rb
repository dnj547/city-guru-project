require 'bundler'
require 'rest-client'

Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'app'
require_all 'lib'

ActiveRecord::Base.logger = nil
