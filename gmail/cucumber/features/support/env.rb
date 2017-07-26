require 'capybara/dsl'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'faker'
require 'selenium-webdriver'
require 'site_prism'

Before do
  Capybara.page.driver.browser.manage.window.maximize
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 20
