Feature: Logout Page
  In order to protect my information
  As a user
  I want to log out when I am finished with the page

  Scenario: Logout
    Given I visit the login page
    And I log in with valid credentials
    And I log out
    Then I should see the logout page