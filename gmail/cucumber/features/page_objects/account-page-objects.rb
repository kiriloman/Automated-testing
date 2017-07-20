class Account < SitePrism::Page
  element :first_name, :xpath, '//input[@id="FirstName"]'
  element :last_name, :xpath, '//input[@id="LastName"]'
  element :email, :xpath, '//input[@id="GmailAddress"]'
  element :create_password, :xpath, '//input[@id="Passwd"]'
  element :confirm_password, :xpath, '//input[@id="PasswdAgain"]'
  element :month, :xpath, '//div[@title="Birthday"]'
  element :day, :xpath, '//input[@id="BirthDay"]'
  element :year, :xpath, '//input[@id="BirthYear"]'
  element :gender, :xpath, '//div[@title="Gender"]'
  element :phone, :xpath, '//input[@id="RecoveryPhoneNumber"]'
  element :current_email, :xpath, '//input[@id="RecoveryEmailAddress"]'
  element :location, :xpath, '//div[@title="Location"]'
end
