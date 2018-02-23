require 'capybara/cucumber'

Given(/^I visit the login page$/) do
  visit('/')
end

Given(/^I log in with valid credentials$/) do
  fill_in('username', with: 'joe')
  fill_in('password', with: 'joe')
  click_button('Login')
end

Given(/^I log out$/) do
  click_link('Logout')
end

Then(/^I should see the logout page$/) do
  expect(page.has_content?('You have been logged out')).to eq true
end