#Given(/^I am on the index page$/) do
 #   assert_current_path(index_path)
#end

#When (/^I press the "([^"]*)" button$/) do |text|
#    click_button(text)
#end


Then (/^I should go to chamado page$/) do
    assert_current_path(chamado_path)
end

When (/^I press the checkbox "Monitorar"$/) do
    check('Monitorar')
    @monitorar = Monitorando.new(id_user: 1, id_chamado: 1, bairro: "JIQUIA", logradouro: "1TR BEZINHA")
    @monitorar.save
end

When (/^I press Home$/) do
   visit(root_path)
end

#Then (/^I should see a text "([^"]*)"$/) do |text|
#    expect(page).to have_content(text)
#end

