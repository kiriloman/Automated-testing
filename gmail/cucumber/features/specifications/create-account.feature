Feature: Create a Gmail account

@create_gmail_account @account_data
Scenario: Create a Gmail account successfully

  Given I am on Gmail site
  When I choose Create account
  And fill in the fields
  Then my Gmail account should be successfully created
