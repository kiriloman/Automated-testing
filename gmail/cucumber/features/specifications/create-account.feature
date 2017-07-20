Feature: Create a Gmail account

Scenario: Create a Gmail account successfully

  Given I am on Gmail site
  When I choose Create account
  And fill in the fields
  Then my Gmail account should be successfully created
