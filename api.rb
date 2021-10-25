# frozen_string_literal: true

require 'active_record'
require 'json'
require 'sinatra'
require 'yaml'

require './models/book'

unless ENV['DATABASE_URL']
  application = YAML.load_file('config/application.yml')
  ENV.merge!(application)
end

before do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
end

get '/' do
  [200, {}, JSON.generate({})]
end

get '/:id' do
  id = params[:id]

  book = Book.find_by id: id
  json = book.nil? ? {} : { title: book.title, year_of_writing: book.year_of_writing }

  JSON.generate(json)
end
