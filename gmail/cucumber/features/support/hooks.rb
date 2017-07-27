Before do
  Capybara.configure do |config|
    config.default_driver = :selenium
  end
  Capybara.javascript_driver = :selenium
  Capybara.default_max_wait_time = 20
end

Before do
  Capybara.page.driver.browser.manage.window.maximize
end
