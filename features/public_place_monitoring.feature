Feature: User public place monitoring
	As a User
	I want select one public place
	In order to monitor
	
	Background: Start from the index page
		Given I am on the index page
		When I press the "Chamados" button 
		Then I should go to chamado page
		
	Scenario: Successful  select public place
		When I choose in "Av. Beberibe" from select "Logradouro" 
		And I press the "Monitorar Logradouro" button
		Then I should see a text "Monitorando com sucesso!"
		And be redirected to the index page
		And I should see a text "Av. Beberibe"