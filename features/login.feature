Feature: Login
    As a User
    In order to login
    I want to use my facebook, my google+ or my system register
  
    Scenario: Successful login using system register
        Given I am on the login page
        When I fill in "e-mail" with "meu@e-mail.com"
        And I fill in "Senha" with "minhasenha1234"
        And I press the "Fazer Login" button
        Then I should go to the index page
    
    Scenario: Unsuccessful login using system register
        Given I am on the login page
        When I fill in "e-mail" with "asde.com"
        And I fill in "Senha" with "asdasdasd"
        And I press the "Fazer Login" button
        Then I should see a text "Login ou Senha incorretos"
    
    Scenario: Successful login using google+

    Scenario: Successful login using facebook
