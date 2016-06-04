Feature: User view call by  district
	As a User
	I want select one district
	In order to view its called
	
	Background: Start from the index page
	  	Given I am logged in
        And I am on the index page
		When I press "Chamados"
		Then I should go to chamados page
		
	Scenario: view called by district
		When I choose in "JIQUIA" from select "chamado_bairro"
		And I press the button with id: "procura_chamado"
		Then I should see a text "PODA DE ARVORES"
		And I should see a text "2015-07-06"
		And I should see a text "PENDENTE"
