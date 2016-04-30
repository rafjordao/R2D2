Feature: statical graph
    As a user
    I want to see informative graphics with the total number of calls and their situations
    In order to have control services of Emlurb
    
        Background: Start from the contato page
            Given I am on the index page
            When I press the "gráfico" button
            Then I should go to grafico page
            
        Scenario: Successful seeing the graph for total
            When I press "Formar gráfico" button
            Then I should see a Statistical Graph
          
        Scenario: Successful seeing the graph for district
            When I press "Por bairro" radial button
            And I choose in "Encruzilhada" from select "Bairro"
            And I press "Formar gráfico" button
            Then I should see a Statistical Graph