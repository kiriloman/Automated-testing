Given(/^I am on Gmail site$/) do
  visit "https://www.gmail.com"
end

When(/^I choose Create account$/) do
  @create_acc = CreateAccount.new
  @create_acc.choose_create_account
end

When(/^fill in the fields$/) do
  @create_acc.fill_fields
  @create_acc.accept_terms
end

Then(/^my Gmail account should be successfully created$/) do
  @create_acc.confirm
end
