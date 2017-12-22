Feature: EDIS Home page

  Scenario: To launch EDIS home page
    Given I am on EDIS home page
    When I navigate to login screen
    And enter username internaluser
    And enter password Testuser1234@
    And enter security_word edis3
    And I login
    Then I should see "Welcome to EDIS. You are currently logged in." on the page
















