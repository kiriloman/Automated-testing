require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "faker"
require "site_prism"

Before do
  Capybara.page.driver.browser.manage.window.maximize
  @signup = Signup.new
  @name = Faker::Name.name
  @email = Faker::Internet.email
  @password = Faker::Base.numerify('rand#####').to_s
end

After do
  Capybara.reset_sessions!
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 20
