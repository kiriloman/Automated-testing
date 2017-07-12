Feature: SignUp

Scenario: SignUp on GitHub

Given I access the GitHub site
When I fill in the fields
And click on Create Account
#And choose Unlimited Public Repo For Free
#And click on Continue
#And describe myself as a user
#And click on Sumbit
Then my registration will be successfully made
