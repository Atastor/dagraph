require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

ENV['RAILS_ENV'] ||= 'test' 

require File.expand_path("../test_app/config/environment.rb", __FILE__)
require 'rspec/rails'
require 'factory_girl_rails' 
require 'database_cleaner'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f } 

RSpec.configure do |config|
 config.mock_with :rspec
 config.use_transactional_fixtures = false
 config.infer_base_class_for_anonymous_controllers = false
 config.order = "random"
end
