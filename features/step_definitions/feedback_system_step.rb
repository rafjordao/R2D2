When(/^I press "Contato"$/) do
   visit(new_contact_path)
end

Then(/^I should go to contato page$/) do
    assert_current_path(new_contact_path)
end

#Given(/^I am on the index page$/) do
#    assert_current_path(index_path)
#end

#When (/^I press the "([^"]*)" button$/) do |text|
#    click_button(text)
#end

#Then(/^I should see a text "([^"]*)"$/) do |text|
#    expect(page).to have_content(text)
#end