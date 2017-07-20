Given(/^I am on Gmail site$/) do
  visit "https://www.gmail.com"
  @create_acc = CreateAccount.new
end

When(/^I choose Create account$/) do
  @create_acc.choose_create_account
end

When(/^fill in the fields$/) do
  @create_acc.fill_fields
end

Then(/^my Gmail account should be successfully created$/) do
  @create_acc.accept_terms
  expect(page).to have_content 'Verify your account'
end
