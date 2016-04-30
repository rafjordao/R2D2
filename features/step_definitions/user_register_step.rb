When (/^I press the "([^"]*)" button$/) do |text|
    click_button(arg)
end

Then(/^I should go to register page/) do
    assert_current_path(register_path)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |area,text|
   fill_in area, with: text
end

When(/^I should see a text "([^"]*)"$/) do |text|
    expect(page).to have_content(text)
end

Then(/^be redirected to the index page$/) do 
    assert_current_path(index_path)
end