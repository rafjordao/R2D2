Given(/^I am not authenticated$/) do
    require "bcrypt"
    visit(login_path)
    assert_current_path(login_path)
    @user = User.new(first_name: "first_name", last_name: "last_name", email: 'user@cin.ufpe.br', password_digest: BCrypt::Password.create('123456'))
    @user.save
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