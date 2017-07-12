Feature: Signup

Scenario: Signup on StackOverflow site

Given I access StackOverflow site
When I click on Sign Up
And I fill in the fields
And click on Sign Up
Then I should be successfully registered
