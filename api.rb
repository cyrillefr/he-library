# frozen_string_literal: true

require 'active_record'
require 'json'
require 'sinatra'
require 'sinatra/activerecord'
require 'yaml'

require './models/author'
require './models/book'

APP_CONF_FILE = 'config/application.yml'

if File.exist? APP_CONF_FILE
  conf = YAML.load_file(APP_CONF_FILE)
  ENV.merge!(conf)
end

set :database, ENV['DATABASE_URL']

get '/' do
  [200, {}, JSON.generate({})]
end

get '/:id' do
  id = params[:id]

  book = Book.find_by id: id
  json = book.nil? ? {} : { id: id, title: book.title, year_of_writing: book.year_of_writing }

  JSON.generate(json)
end
