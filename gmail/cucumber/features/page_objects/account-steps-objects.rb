require 'faker'
require 'rspec/expectations'

class CreateAccount
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @new_account = Account.new
  end

  def choose_create_account
    expect(page).to have_css '.bdf4dc'
    find(:xpath, '//div[@jsname="bCkDte"]').click
    expect(page).to have_css '.PxpPTe.dCgGDe'
    find('#SIGNUP').click
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
    country = page.all('.goog-menuitem')[7].text
    page.all('.goog-menuitem')[7].click
    expect(page).to have_content country
    find('#submitbutton').click
  end

  def accept_terms
    expect(page).to have_content($terms)
    find('#tos-scroll-button').click
    find('#iagreebutton').click
  end

  def confirm
    expect(page).to have_content 'Verify your account'
  end
end
