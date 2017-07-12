Given(/^I access the GitHub site$/) do
  visit "https://www.github.com"
end

When(/^I fill in the fields$/) do
  fill_in 'user[login]', with: 'K123123'
  fill_in 'user[email]', with: 'K123123@gmail.com'
  fill_in 'user[password]', with: 'KKKK123'
end

And(/^click on Create Account$/) do
  within '.mx-auto.col-sm-8.col-md-5.hide-sm.rounded-1.bg-gray-light.pt-4.pb-5' do
    find(:css, '.btn.btn-primary.btn-large.f4.btn-block').click
  end

end

Then(/^my registration will be successfully made$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
