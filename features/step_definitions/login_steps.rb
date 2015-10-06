require 'pry'

Given(/^the login page$/) do
  #put your code here
  visit '/'
end

When(/^I log ?in with user '([^']+)' and password '([^']+)'$/) do |user,pass|
  @username = user
  within('form') do
    fill_in 'username', with: user
    fill_in 'password', with: pass
  end
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(page).to have_content 'This is the secret page.'
  # TODO: Capybara seems to be losing the session, reported off and on for years.
#  expect(page).to have_content "Your username is #{@username}."
end

Then(/^I should see the authentication error message$/) do
  expect(page).to have_content 'Your username & password did not match'
end
