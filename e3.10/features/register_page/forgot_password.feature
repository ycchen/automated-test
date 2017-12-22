Feature: 3522 Forgot password link on login screen

  Scenario: login screen with forgot password
    Given I am on EDIS home page
    And I navigate to login screen
    And I navigate to forgot password link
    And I enter user id as "Testuser84761390"
    And I get information for the user id
    And I enter first question answer to validate as "test"
    And I enter second question answer to validate as "test"
    And I validate
    And I enter new password as "autoreg123!"
    And I confirm new password as "autoreg123!"
    And I reset password


  #password is autoreg123!!!

#    New jira ticket 3743 is opened as information for user id is not displaying
