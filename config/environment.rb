require 'bundler'
Bundler.require

Dotenv.load

API_KEY = ENV['API_KEY']


ActiveRecord::Base.logger = nil #Logger.new(STDOUT)


ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'app'
