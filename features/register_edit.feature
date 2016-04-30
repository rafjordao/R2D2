Feature: User Register Edit
    As a User
    I want to edit my register
    In order to update my informations
    
    Background: Start from the index page
        Given I am on the index page
        When I press the "Editar Perfil" button
        Then I should go to edit profile page
        
    Scenario: Successful editing
        When I fill in "Nome" with "meu nome"
        And I fill in "Sobrenome" with "meu sobrenome"
        And I fill in "e-mail" with "meunovo@email.com"
        And I fill in "Senha" with "senhanova1234"
        And I fill in "Confsenha" with "senhanova1234"
        And I press the "Salvar" button
        Then I should see a text "Seus dados foram alterados com sucesso!"
        And be redirected to the index page
    
   Scenario: Wrong e-mail format
        When I fill in "e-mail" with "asdwe.com"
        Then I should see a text "Porfavor, preencha o campo e-mail com um e-mail válido"
    
    Scenario: Wrong password format
        When I fill in "Senha" with "123"
        Then I should see a text "Senha precisa ter tamanho entre 6 e 16 caracteres"
        
    Scenario: Password and Password comfirmation not matching
        When I fill in "Senha" with "senhanova1234"
        And I fill in "Confsenha" with "senhanova5678"
        Then I should see a text "O campo senha e confirmar senha precisam estar iguais"
        
    Scenario: Empty form
        When I press the "Salvar" button
        Then I should see a text "Preencha os campos obrigatórios"