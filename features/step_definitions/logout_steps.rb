Given(/^I am logged in$/) do
  visit '/'
  fill_in 'username', with: 'a_username'
  fill_in 'password', with: 'a_username'
  click_button 'Login'
end

When(/^I visit the dashboard$/) do
  visit '/dashboard'
end

When(/^I select logout$/) do
  click_link 'Logout'
end

Then(/^I should see the homepage with a logout message$/) do
  expect(page).to have_content 'You have been logged out'
end
