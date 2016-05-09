#Given(/^I am on the index page$/) do
#    assert_current_path(index_path)
#end

#When (/^I press the "([^"]*)" button$/) do |text|
#    click_button(text)
#end

#Then(/^I should see a text "([^"]*)"$/) do |text|
#    expect(page).to have_content(text)
#end

When(/^I press "([^"]*)" radial button$/) do |radio_button|
    choose radio_button
end

When(/I choose in "([^"]*)" from select "([^"]*)"$/) do |option,tag|
    select option, from: tag
end