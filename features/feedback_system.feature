Feature: feedback system
    As a user
    I want to send suggestions and critics about the system
    In order to the developers make updates
    
        Background: Start from the contato page
            Given I am logged in
            And I am on the index page
            When I press "Contato"
            Then I should go to contato page

        Scenario: Message sent successfully
            When I fill in "contact[subject]" with "meu assunto"
            And I fill in "contact[message]" with "minha mensagem"
            And I press the "Enviar" button
            Then I should see a text "Mensagem enviado com sucesso"