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
      And I press the button with id: "procura_logradouro"
      Then I press the "1TR BEZINHA" link
      And I should go to chamado_historico page
      And I fill in "chamado[inicio]" with "06/05/2015"
      And I fill in "chamado[fim]" with "04/30/2016"
      And I press the button with id: "procurar_historico"
      Then I should see a text "PODA DE ARVORES"
      And I should see a text "2015-07-06"
      And I should see a text "PENDENTE"