require 'capybara/dsl'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'faker'
require 'selenium-webdriver'
require 'site_prism'

Capybara::Selenium::Driver.new(app, :browser => :firefox)
