Given(/^I am on the index page$/) do
    assert_current_path(index_path)
end

When (/^I press the "([^"]*)" button$/) do |text|
    click_button(arg)
end

Then(/^I should see a text "([^"]*)"$/) do |text|
    expect(page).to have_content(text)
end