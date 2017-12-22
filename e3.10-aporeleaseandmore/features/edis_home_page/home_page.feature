Feature: EDIS Home page

  Scenario: To launch EDIS home page
    Given I am on EDIS home page
    Given I am on EDIS external home page
    And I navigate to login screen
    And I enter username "ExternalUser"
    And I enter password "Testuser1234!"
    And I click Agree and Submit
    Then I logout


    #bcaesar
    #internaluser
















