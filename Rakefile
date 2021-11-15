# frozen_string_literal: true

require 'sinatra/activerecord/rake'
task :default

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task :spec
rescue LoadError
  # no rspec available
end

namespace :db do
  task :load_config do
    require './app'
  end
end
