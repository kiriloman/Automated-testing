require_relative 'helper.rb'

World(Helper)

Before do
  Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://www.gmail.com'
  end
  Capybara.current_driver = :selenium
  Capybara.javascript_driver = :selenium
  Capybara.default_max_wait_time = 20
end

Before do
  Capybara.page.driver.browser.manage.window.maximize
end
