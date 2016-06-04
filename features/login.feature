Feature: Login
    As a User
    In order to login
    I want to use my facebook, my google+ or my system register
  
    Scenario: Successful login using system register
        Given I am not authenticated
        When I fill in "session[email]" with "user@cin.ufpe.br"
        And I fill in "session[password]" with "123456"
        And I press the "Fazer Login" button
        Then I should see a text "Usuário, first_name logado com sucesso!"
        Then be redirected to the index page
    
    Scenario: Unsuccessful login using system register
        Given I am not authenticated
        When I fill in "session[email]" with "asde@abc.com"
        And I fill in "session[password]" with "asdasdasd"
        And I press the "Fazer Login" button
        Then I should see a text "E-mail e/ou Senha não válidos!"
    
    Scenario: Successful login using google+

    Scenario: Successful login using facebook
