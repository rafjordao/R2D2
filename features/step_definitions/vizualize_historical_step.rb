Given(/^I am on the index page$/) do
    assert_current_path(index_path)
end

#When (/^I press the "([^"]*)" button$/) do |text|
#    click_button(text)
#end

When (/^I press the "([^"]*)" in Logradouro$/) do |link|
    click_link link
end

#When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |area,text|
#   fill_in area, with: text
#end

Then(/^I should go to chamado page$/) do
    assert_current_path(chamado_path)
end

#Then(/^I should see a text "([^"]*)"$/) do |text|
#    expect(page).to have_content(text)
#end