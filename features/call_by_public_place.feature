Feature: User view call by public place
	As a User
	I want select one public place
	to view its calls
	
	Background: Start from the index page
		Given I am on the index page
		When I press the "Chamados" button 
		Then I should go to chamados page
		
	Scenario: view call by public place
		When I select one public place
		And	I press the "Pesquisar por logradouro" button
		Then I should see a text "Serviço"
		And I should see a text "Data de Criação"
		And I should see a text "Situação"
		And I should see a text "Monitorar"