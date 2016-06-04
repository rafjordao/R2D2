Feature: User call monitoring
	As a User
	I want to monitor a specific call
	In order to receive notifications from him
	
	Background: Start from the index page
		Given I am logged in
        And I am on the index page
		When I press "Chamados"
		Then I should go to chamados page
		
	Scenario: monitoring call
        When I choose in "1TR BEZINHA" from select "chamado_logradouro" 
		And I press the button with id: "procura_logradouro"
		Then I should see a text "Serviço"
		When I press the checkbox "Monitorar" 
		And I press the "Home" button
		Then I should go to index page
		And I should see a text "Av. Cruz Cabugá"
		
		