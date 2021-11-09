# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '2.7.4'

gem 'activerecord'
gem 'figaro'
gem 'pg'
gem 'rake'
gem 'sinatra'
gem 'solargraph', require: false
gem 'yaml'

group :development, :test do
  gem 'rack-test'
  gem 'rspec'
  gem 'rubocop', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
end
