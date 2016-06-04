Feature: User district monitoring
	As a User
	I want select one district
	In order to monitor
	
	Background: Start from the index page
		Given I am logged in
        And I am on the index page
		When I press "Chamados"
		Then I should go to chamados page
		
	Scenario: Successful  select district
		When I choose in "JIQUIA" from select "chamado_bairro"
		And I press the button with id: "monitorar_bairro"
		Then I should see a text "O bairro JIQUIA está sendo monitorado com sucesso!"
		And be redirected to the index page
		And I should see a text "JIQUIA"