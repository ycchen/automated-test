Feature: Administer user accounts

  Scenario: To administer a user account
    Given I navigate to edis main page
    And I go to admin tab
    And I go to administer user accounts
    And I enter autotest as user id
    And I find admin user
    Then I should see "rac B" on the page

