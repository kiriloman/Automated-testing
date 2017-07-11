Given(/^I access Continente website&/) do
  visit "https://www.continente.pt"
end

When(/^I fill in email and password fields with registered credentials$/) do
  within '.loginArea' do
    fill_in 'username', with: 'iaz68842@tqosi.com'
    fill_in 'password', with: 'kysOLX123'
  end
end

When(/^click Entrar$/) do
  within '.loginArea' do
    find(:css, '#btnLogin').click
  end
end

Then(/^I should be successfully logged in$/) do
  expect(page).to have_css '#myAccountLogin'
end
