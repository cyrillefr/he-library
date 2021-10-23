# frozen_string_literal: true

require 'active_record'
require 'json'
require 'sinatra'
require 'uri'
require 'yaml'

require './models/book'

get '/' do
  JSON.generate({})
end

get '/:id' do
  id = params[:id]
  # Connect to DB
  unless ENV['DATABASE_URL']
    application = YAML.load_file('config/application.yml')
    ENV.merge!(application)
  end
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

  json =
    begin
      book = Book.find(id)
      { title: book.title, year_of_writing: book.year_of_writing }
    rescue ActiveRecord::RecordNotFound
      {}
    end

  JSON.generate(json)
end
