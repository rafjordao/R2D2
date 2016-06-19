Feature: statical graph
    As a user
    I want to see informative graphics with the total number of calls and their situations
    In order to have control services of Emlurb
    
        Background: Start from the contato page
            Given I am logged in
            And I am on the index page
            When I press "Gráfico"
            Then I should go to grafico page
            
        Scenario: Successful seeing the graph for total
            When I press "inlineRadio1" radial button
            Then I should see a Statistical Graph named "Gráfico Geral"
            
        Scenario: Successful seeing the graph for district
            When I choose in "JIQUIA" from select "graph_bairro"
            Then I should see a Statistical Graph named "JIQUIA"