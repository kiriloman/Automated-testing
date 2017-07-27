Before do
  Capybara.page.driver.browser.manage.window.maximize
  Capybara.default_driver = :selenium
  Capybara.default_max_wait_time = 20
end
