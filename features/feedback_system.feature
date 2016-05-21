Feature: feedback system
    As a user
    I want to send suggestions and critics about the system
    In order to the developers make updates
    
        Background: Start from the contato page
            Given I am on the index page
            When I press the "contato" button
            Then I should go to contato page

        Scenario: Message sent successfully
            When I fill in "contact[assunto]" whith "meu assunto"
            And I fill in "contact[Menssagem]" with "minha mensagem"
            And I press the "Enviar" button
            Then I should see a text "Sua menssagem foi enviada com sucesso!"
            And be redirected to the index page
            
        Scenario: Wrong e-mail format
            When I fill in "contact[e-mail]" with "asdwe.com"
            Then I should see a text "E-mail invalido, favor preencher campo e-mail novamente"
            
        Scenario: Empty form
            When I press the "Enviar" button
            Then I should see a text "Preencha os campos obrigatórios"