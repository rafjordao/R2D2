Feature: User Register
  As a User
  In order to not use my facebook or my google+
  I want to register
  
    Background: Start from the login page
        Given I am on the login page
        When I press the "register" link
        Then I should go to register page
  
    Scenario: Successful register
        When I fill in "user[first_name]" with "meu nome"
        And I fill in "user[last_name]" with "meu sobrenome"
        When I fill in "user[email]" with "meu@email.com"
        And I fill in "user[password]" with "minhasenha1234"
        And I fill in "user[password_confirmation]" with "minhasenha1234"
        And I press the "Sign Up" form button
        Then I should see a text "Cadastro feito com sucesso!"
        And be redirected to the index page
    
    Scenario: Wrong e-mail format
        When I fill in "user[email]" with "asdwe.com"
        And I press the "Sign Up" form button
        Then I should see a text "Inclua um '@' no endereço de e-mail."
        
    Scenario: Wrong password format
        When I fill in "user[password]" with "123"
        And I press the "Sign Up" form button
        Then I should see a text "Password is too short (minimum is 6 characters)"
        
    Scenario: Password and Password comfirmation not matching
        When I fill in "user[password]" with "minhasenha1234"
        And I fill in "user[password_confirmation]" with "minhasenha5678"
        And I press the "Sign Up" form button
        Then I should see a text "Password confirmation doesn't match Password"
        
    Scenario: Empty form
        And I press the "Sign Up" form button
        Then I should see a text "Email can't be blank"
        And I should see a text "Password can't be blank"
        
    