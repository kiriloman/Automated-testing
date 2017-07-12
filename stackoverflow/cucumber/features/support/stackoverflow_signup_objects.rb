class Signup < SitePrism::Page
  element :name, "input[id='display-name']"
  element :email, "input[id='email']"
  element :password, "input[id='password']"
end
