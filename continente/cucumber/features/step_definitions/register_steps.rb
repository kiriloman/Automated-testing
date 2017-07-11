Given(/^I access Continente website$/) do
  visit "https://www.continente.pt/"
end

When(/^I click on Novo Registo$/) do
  click_on 'Novo Registo'
  expect(page).to have_content 'Para se registar deverá preencher os seguintes campos:'
end

When(/^fill in the fields$/) do
  within '.questions' do
    fill_in 'DisplayName', with: 'KYS'
    fill_in 'Email', with: 'iaz6884sd2@tqosi.com'
    fill_in 'password_password', with: 'kysOLX123'
    fill_in 'zipCode', with: '2879-022'
    fill_in 'telephoneNumber', with: '912543122'
    choose 'clientTypeP'
  end
  within '.suffixArea' do
    check 'acceptTermsAndConditions'
  end
end

When(/^click on Completar Registo$/) do
  within '.suffixArea' do
    find(:css, '#btnRegisterSimple').click
    #find(:xpath, '//input[@name="btnRegisterSimple"]').click
    #click_on 'Completar registo'
  end
end

Then(/^my registration should be successfully completed$/) do
  page.has_css?('.confirmationArea', :text => 'iaz68842sd@tqosi.com', :visible => 'true')
  expect(page).to have_css '.confirmationArea'

  @teste = "Kyrylo"

  expect(@teste).to eq "Kyrylo"
end
