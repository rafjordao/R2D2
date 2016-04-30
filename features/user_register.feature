Feature: User Register
  As a User
  In order to not use my facebook or my google+
  I want to register
  
    Background: Start from the login page
        Given I am on the login page
        When I press the "não tem cadastro?" button
        Then I should go to register page
  
    Scenario: Successful register
        When I fill in "user[nome]" with "meu nome"
        And I fill in "user[sobrenome]" with "meu sobrenome"
        And I fill in "user[e-mail]" with "meu@email.com"
        And I fill in "user[senha]" with "minhasenha1234"
        And I fill in "user[confsenha]" with "minhasenha1234"
        And I press the "continuar" button
        Then I should see a text "Cadastro feito com sucesso!"
        And be redirected to the index page
    
    Scenario: Wrong e-mail format
        When I fill in "user[e-mail]" with "asdwe.com"
        Then I should see a text "Porfavor, preencha o campo e-mail com um e-mail válido"
    
    Scenario: Wrong password format
        When I fill in "user[senha]" with "123"
        Then I should see a text "Senha precisa ter tamanho entre 6 e 16 caracteres"
        
    Scenario: Password and Password comfirm not matching
        When I fill in "user[senha]" with "minhasenha1234"
        And I fill in "user[confsenha]" with "minhasenha5678"
        Then I should see a text "O campo senha e confirmar senha precisam estar iguais"
        
    Scenario: Empty form
        When I press the "continuar" button
        Then I should see a text "Preencha os campos obrigatórios"
        
    