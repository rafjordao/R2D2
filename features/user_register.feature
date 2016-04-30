Feature: User Register
  As a User
  In order to not use my facebook or my google+
  I want to register
  
    Background: Start from the login page
        Given I am on the login page
        When I press the "não tem cadastro?" button
        Then I should go to register page
  
    Scenario: Successful register
        When I fill in "Nome" with "meu nome"
        And I fill in "Sobrenome" with "meu sobrenome"
        And I fill in "e-mail" with "meu@email.com"
        And I fill in "Senha" with "minhasenha1234"
        And I fill in "Confsenha" with "minhasenha1234"
        And I press the "Continuar" button
        Then I should see a text "Cadastro feito com sucesso!"
        And be redirected to the index page
    
    Scenario: Wrong e-mail format
        When I fill in "e-mail" with "asdwe.com"
        Then I should see a text "Porfavor, preencha o campo e-mail com um e-mail válido"
    
    Scenario: Wrong password format
        When I fill in "Senha" with "123"
        Then I should see a text "Senha precisa ter tamanho entre 6 e 16 caracteres"
        
    Scenario: Password and Password comfirmation not matching
        When I fill in "Senha" with "minhasenha1234"
        And I fill in "Confsenha" with "minhasenha5678"
        Then I should see a text "O campo senha e confirmar senha precisam estar iguais"
        
    Scenario: Empty form
        When I press the "Continuar" button
        Then I should see a text "Preencha os campos obrigatórios"
        
    