Feature: User public place monitoring
	As a User
	I want select one public place
	In order to monitor
	
	Background: Start from the index page
		Given I am logged in
        And I am on the index page
		When I press "Chamados"
		Then I should go to chamados page
		
	Scenario: Successful  select public place
		When I choose in "1TR BEZINHA" from select "chamado_logradouro" 
		And I press the button with id: "monitorar_logradouro" 
		Then I should see a text "O logradouro 1TR BEZINHA está sendo monitorado com sucesso!"
		And be redirected to the index page
		And I should see a text "1TR BEZINHA"