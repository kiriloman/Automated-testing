Given(/^I access StackOverflow site$/) do
  visit "https://www.stackoverflow.com"
end

When(/^I click on Sign Up$/) do
  within '.-actions' do
    find(:xpath, '//a[@href="/users/signup"]').click
  end
end

When(/^I fill in the fields$/) do
  within '#se-login-fields' do
    @signup.name.set(@name)
    @signup.email.set(@email)
    @signup.password.set(@password)
  end
end

When(/^click on Sign Up$/) do
  within '#controls-row' do
    find(:css, '#submit-button')
  end
end

Then(/^I should be successfully registered$/) do
  expect(page).to have_content 'Registration email sent'
end
