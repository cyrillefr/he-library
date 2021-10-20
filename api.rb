# frozen_string_literal: true

require 'active_record'
require 'json'
require 'sinatra'
require 'uri'
require 'yaml'


get '/:id' do

  id = defined?(params) ? params[:id] : 1

  # Connect to DB
  ActiveRecord::Base.establish_connection(db_conf)

  # We want to retrieve books from DB
  class Book < ActiveRecord::Base
  end

  book = Book.find(id)

  JSON.generate({ title: book.title })
end

def db_conf
  unless ENV['DATABASE_URL']
    application = YAML.load_file('config/application.yml')
    ENV.merge!(application)
  end
  db_url = URI(ENV['DATABASE_URL'])
  conf = { 'adapter' => db_url.scheme,
           'database' => db_url.path[1..],
           'host' => db_url.host,
           'username'=> db_url.user,
           'password' => db_url.password }
  conf
end
