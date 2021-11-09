# frozen_string_literal: true

task :default

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task :spec
rescue LoadError
  # no rspec available
end
