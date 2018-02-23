require 'capybara/cucumber'

Given(/^the login page$/) do
  visit('/')
end

When(/^I log in with proper credentials$/) do
  fill_in('username', with: 'joe')
  fill_in('password', with: 'joe')
  click_button('Login')
end

Then(/^I should see the secret page$/) do
  expect(page.has_content?('This is the secret page')).to eq true
end

When(/^I log in with bad credentials$/) do
  fill_in('username', with: 'joe')
  fill_in('password', with: 'wrong')
  click_button('Login')
end

Then(/^I should see an error message$/) do
  expect(page.has_content?('Your username & password did not match')).to eq true
end

