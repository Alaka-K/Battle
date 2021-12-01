require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'

ENV["RACK_ENV"] = "test"
Capybara.app = Battle