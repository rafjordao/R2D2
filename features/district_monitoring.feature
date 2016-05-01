Feature: User district monitoring
	As a User
	I want select one district
	In order to monitor
	
	Background: Start from the index page
		Given I am on the index page
		When I press the "Chamados" button 
		Then I should go to chamado page
		
	Scenario: Successful  select district
		When I choose in "Agua Fria" from select "Bairro"
		And I press the "Monitorar bairro" button
		Then I should see a text "Monitorando com sucesso!"
		And be redirected to the index page
		And I should see a text "Agua Fria"