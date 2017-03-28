require_relative './config/environments'
require 'sinatra/activerecord/rake'
require 'sinatra/activerecord'

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task :test => :spec
end