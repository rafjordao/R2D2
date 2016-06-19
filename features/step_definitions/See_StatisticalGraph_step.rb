#Given(/^I am on the index page$/) do
 #   assert_current_path(index_path)
#end

#Then(/^I should see a text "([^"]*)"$/) do |text|
#    expect(page).to have_content(text)
#end

When(/^I press "([^"]*)" radial button$/) do |radial_button|
 choose radial_button
end

#When(/I choose in "([^"]*)" from select "([^"]*)"$/) do |option,tag|
#    select option, from: tag
#end

When(/^I press "Gráfico"$/) do
 visit(grafico_path)
end

Then (/^I should go to grafico page$/) do
 assert_current_path(grafico_path)
end 

Then(/^I should see a Statistical Graph named "([^"]*)"$/) do |graph|
 expect(page).to have_content(graph)
end