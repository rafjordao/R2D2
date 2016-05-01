Feature: User call monitoring
	As a User
	I want to monitor a specific call
	In order to receive notifications from him
	
	Background: Start from the index page
		Given I am on the index page
		When I press the "Chamados" button 
		Then I should go to search call page
		
	Scenario: monitoring call
        When I choose in "Av. Cruz Cabugá" from select "Logradouro" 
		And	I press the "Pesquisar por logradouro" button
		Then I should see a text "Serviço"
		When I press the checkbox "Monitorar"
		And I press the "Home" button
		Then I should go to index page
		And I should see a text "Av. Cruz Cabugá"
		
		