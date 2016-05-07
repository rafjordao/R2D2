Given(/^I am on the login page$/) do
    visit(login_path)
end

#When (/^I press the "([^"]*)" button$/) do |text|
#    click_button(text)
#ends

Then(/^I should go to register page/) do
    assert_current_path(signup_path)
end

When(/^I press the "([^"]*)" link/) do |link|
    click_link link
end

When(/^I press the "([^"]*)" form button/) do |button|
#    page.should have_selector("input[type=submit]","[value='Sign Up']")
    page.find("input[type=submit]").click
end

#When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |area,text|
#   fill_in area, with: text
#end

#Then(/^I should see a text "([^"]*)"$/) do |text|
#    expect(page).to have_content(text)
#end

Then(/^be redirected to the index page$/) do 
    assert_current_path(root_path)
end