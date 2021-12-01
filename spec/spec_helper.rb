require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative 'features/web_helpers'

ENV["RACK_ENV"] = "test"
Capybara.app = Battle