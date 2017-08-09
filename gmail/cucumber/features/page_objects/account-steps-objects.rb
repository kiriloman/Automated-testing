require 'faker'
require 'rspec/expectations'

class CreateAccount
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @new_account = Account.new
  end

  def choose_create_account
    expect(page).to have_css('.bdf4dc')
    find(:xpath, '//div[@jsname="bCkDte"]').click
    find(:xpath, '//content[@aria-label="Create account"]').click
    find(:xpath, '//content[@aria-label="Create account"]').click
  end

  def fill_fields
    expect(page).to have_content($create_account)
    @new_account.first_name.set($first_name)
    @new_account.last_name.set($last_name)
    @new_account.email.set($email)
    @new_account.create_password.set($password)
    @new_account.confirm_password.set($password)
    @new_account.month.click
    page.all('.goog-menuitem')[4].click
    @new_account.day.set($day)
    @new_account.year.set($year)
    @new_account.gender.click
    page.all('.goog-menuitem')[1].click
    @new_account.phone.set($phone)
    @new_account.current_email.set($current_email)
    @new_account.location.click
    page.all('.goog-menuitem')[7].click
    find(:css, '#submitbutton').click
  end

  def accept_terms
    expect(page).to have_content($terms)
    find(:css, '#tos-scroll-button').click
    find(:css, '#iagreebutton').click
  end
end
