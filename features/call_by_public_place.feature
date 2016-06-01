Feature: User view call by public place
	As a User
	I want select one public place
	In order to view its calls
	
	Background: Start from the index page
		Given I am on the index page
		When I press "Chamados"
		Then I should go to chamados page
		
	Scenario: view call by public place
		When I choose in "1TR BEZINHA" from select "chamado_logradouro" 
		And I press the button with id: "procura_logradouro" 
		Then I should see a text "PODA DE ARVORES"
		And I should see a text "2015-07-06"
		And I should see a text "PENDENTE"