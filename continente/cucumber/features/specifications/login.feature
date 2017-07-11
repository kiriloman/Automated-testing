Feature: Login

Scenario: Login on Continente

Given I access Continente website
When I fill in email and password fields with registered credentials
And click Entrar
Then I should be successfully logged in
