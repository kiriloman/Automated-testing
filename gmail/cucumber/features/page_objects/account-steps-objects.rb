require 'faker'
require 'rspec/expectations'

class CreateAccount
  include Capybara::DSL #?
  include RSpec::Matchers

    def choose_create_account
      expect(page).to have_content 'to continue to Gmail'
      # Click on More Options
      find(:xpath, '//div[@jsname="bCkDte"]').click
      find(:xpath, '//content[@aria-label="Create account"]').click
      find(:xpath, '//content[@aria-label="Create account"]').click
    end

    def fill_fields
      expect(page).to have_content 'Create your Google Account'

      @password = Faker::Base.numerify('#########')

      @new_account = Account.new
      @new_account.first_name.set Faker::Name.name
      @new_account.last_name.set Faker::Name.name
      @new_account.email.set Faker::Base.numerify('cucumbertest######')
      @new_account.create_password.set @password
      @new_account.confirm_password.set @password
      @new_account.month.click
      page.all('.goog-menuitem')[4].click
      @new_account.day.set Faker::Number.between(1, 31)
      @new_account.year.set Faker::Base.numerify('19##')
      @new_account.gender.click
      page.all('.goog-menuitem')[1].click
      @new_account.phone.set Faker::Base.numerify('+35193#######')
      @new_account.current_email.set Faker::Internet.email
      @new_account.location.click
      page.all('.goog-menuitem')[7].click
      find(:css, '#submitbutton').click
    end

    def accept_terms
      expect(page).to have_content 'Privacy and Terms'
      find(:css, '#tos-scroll-button').click
      find(:css, '#iagreebutton').click
      #########
      expect(page).to have_content 'Welcome'
    end

end
