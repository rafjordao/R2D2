#Given(/^I am on the index page$/) do
#    assert_current_path(index_path)
#end

When (/^I press the button with id: "([^"]*)"$/) do |text|
    page.has_content?(text)
    @chamado = Chamado.new(bairro: "JIQUIA", servico: "PODA DE ARVORES", data_demanda: '2015-07-06', situacao:'PENDENTE')
    @chamado.save
    click_on(text)
end


Then (/^I should go to chamados page$/) do
    assert_current_path(chamados_path)
end

When(/^I choose in "([^"]*)" from select "([^"]*)"$/) do |option,tag|
    #page.has_content?('JIQUIA')
    select(option, :from => tag)
end

#Then (/^I should see a text "([^"]*)"$/) do |text|
#    expect(page).to have_content(text)
#end

When(/^I press "Chamados"$/) do
    visit(chamados_path)
end