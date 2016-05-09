Feature: User Register Edit
    As a User
    I want to edit my register
    In order to update my informations
    
    Background: Start from the index page
        Given I am logged in
        And I am on the index page
        When I press "Settings"
        Then I should go to edit profile page
        
    Scenario: Successful name editing
        When I fill in "user[first_name]" with "meu nome"
        And I fill in "user[last_name]" with "meu sobrenome"
        And I fill in "inputPassword_name" with "123456"
        And I press the "Editar Nome" button
        Then I should see a text "Seus dados foram alterados com sucesso!"

    Scenario: Successful e-mail editing
        When I press the "mail_edit" tab link
        And I fill in "user[email]" with "user_edit@cin.ufpe"
        And I fill in "user[email_confirm]" with "user_edit@cin.ufpe"
        And I fill in "inputPassword_email" with "123456"
        And I press the "Editar E-mail" button
        Then I should see a text "Seus dados foram alterados com sucesso!"

    Scenario: Unsuccesful name editing by password
        When I fill in "inputPassword_pass" with "meu nome"
        And I fill in "user[last_name]" with "meu sobrenome"
        And I fill in "inputPassword_name" with "789012"
        And I press the "Editar Nome" button
        Then I should see a text "Senha inválida!"
    
   Scenario: Wrong e-mail format
        When I press the "mail_edit" tab link
        When I fill in "user[email]" with "asdwe.com"
        Then I should see a css text "Digite um e-mail válido!"
    
    Scenario: Wrong password format
        When I press the "pass_edit" tab link
        When I fill in "inputPassword_pass" with "123"
        Then I should see a css text "Curto demais!"
        
    Scenario: Password and Password comfirmation not matching
        When I press the "pass_edit" tab link
        When I fill in "inputNewPassword" with "senhanova1234"
        And I fill in "inputNewPasswordConfirm" with "senhanova5678"
        Then I should see a css text "Senhas não coincidem!"