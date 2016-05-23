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
		When I choose in "JIQUIA" from select "chamado[bairro]"
		And I press the "Pesquisar por bairro" button
		Then I should see a text "Serviço"
		And I should see a text "Data de Criação"
		And I should see a text "Situação"
		And I should see a text "Monitorar"
