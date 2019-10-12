# Generated by rspec-sinatra. (2019-10-11 09:50:31 +0100)
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'
require 'simplecov-console'
require_relative './setup_test_database'
require_relative './database_connection_setup'

ENV['ENVIRONMENT'] = 'test'

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end

SimpleCov.formatter = SimpleCov::Formatter::Console
SimpleCov.start do
  add_filter "database_connection_setup.rb"
end

require File.join(File.dirname(__FILE__), '..', './app.rb')

Capybara.app = Chitter