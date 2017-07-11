Feature: Register

Scenario: Register on Continente

Given I access Continente website
When I click on Novo Registo
And fill in the fields
And click on Completar Registo
Then my registration should be successfully completed
