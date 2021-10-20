# frozen_string_literal: true

require 'active_record'
require 'json'
require 'yaml'

defined?(params) ? params[:id] : 1

conf = YAML.load_file('config/database.yml')

# Connect to DB
ActiveRecord::Base.establish_connection(conf)

# We want to retrieve books from DB
class Book < ActiveRecord::Base
end

book = Book.find(id)

puts JSON.generate({ title: book.title })
