Feature: vizualize historical
    As a user
    I want filter information 
    In order to show all last open calls for certain public place, using the date.
    
    Background: Start from the index page
		Given I am logged in
        And I am on the index page
		When I press "Chamados"
		Then I should go to chamados page
    
    Scenario: Successful vizualize historical
      When I choose in "1TR BEZINHA" from select "chamado_logradouro"
      Then I should see a text "1TR BEZINHA"
      Then I should go to historico_chamado page
      And I fill in "de_data" with "12/03/2016"
      And I fill in "ate_data" with "30/04/2016"
      And I press "Pesquisar" button
      Then I should see a text "Serviço"
      And I should see a text "Data de Criação"
      And I should see a text "Situação"