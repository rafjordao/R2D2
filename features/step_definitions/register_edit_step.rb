Given(/^I am logged in$/) do
    @user = User.new(first_name: "first_name", last_name: "last_name", email: "user@cin.ufpe", password: '123456')
    @user.save
    visit(login_path)
    fill_in "session[email]", with: "user@cin.ufpe"
    fill_in "session[password]", with: "123456"
    click_button("Fazer Login")
end

Given(/^I am on the index page$/) do
    assert_current_path(root_path)
end

When (/^I press "Settings"$/) do
    visit(edit_users_path)
end

When (/^I press the "([^"]*)" tab link$/) do |link|
    click_link link
end

Then(/^I should see a css text "([^"]*)"$/) do |t|
    page.has_content?(t)
end

Then(/^I should go to edit profile page$/) do 
    assert_current_path(edit_users_path)
end