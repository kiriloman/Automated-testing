require_relative 'helper.rb'

World(Helper)

Before do
=begin
  Capybara.configure do |config|
    config.default_driver = :selenium
  end
=end
  Capybara.javascript_driver = :selenium
  Capybara.default_max_wait_time = 20
end

Before do
  Capybara.page.driver.browser.manage.window.maximize
end
