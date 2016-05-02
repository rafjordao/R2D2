Given(/^I am not authenticated$/) do
   visit '/users/sing_in'
end
    
When (/^I press the "([^"]*)" button$/) do |text|
    click_button(text)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |area,text|
   fill_in area, with: text
end

Then(/^I should see a text "([^"]*)"$/) do |text|
    expect(page).to have_content(text)
end

Then (/^I am redirected to "([^\"]*)"$/) do |url|
      assert [301, 302].include?(@integration_session.status), "Expected status to be 301 or 302, got #{@integration_session.status}"
      location = @integration_session.headers["Location"]
      assert_equal url, location
      visit location
end