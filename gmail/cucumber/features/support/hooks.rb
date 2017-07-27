Before do
  Capybara.page.driver.browser.manage.window.maximize
  Capybara.configure do |config|
    Capybara.default_driver = :selenium
  end
  Capybara.default_max_wait_time = 20
end
