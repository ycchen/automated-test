Feature: 3518,3519,3525,3600 User name drop down next to logout button

  Scenario: User preference page to allow users to edit and save changes
    Given I navigate to edis main page
    And I go to username menu tab
    And I navigate to user preferences
    And I enter user first name as "rach"
    And I enter user last name as "Bu"
    And I enter user email id as "rachana.bukka@usitc.gov"
    And I select first security question as "What is your favorite vegetable?"
    And I enter first security answer as "Beans"
    And I select second security question as "Who was your childhood hero?"
    And I enter second security answer as "Bose"
    And I update user preferences

  Scenario: User preference page to allow users to edit and save changes
    Given I navigate to edis main page
    And I go to username menu tab
    And I navigate to user preferences
    And I enter user first name as "rach"
    And I enter user last name as "Bu"
    And I enter user email id as "rachana.bukka@usitc.gov"
    And I select first security question as "What is your favorite vegetable?"
    And I enter first security answer as "Beans"
    And I select second security question as "Who was your childhood hero?"
    And I enter second security answer as "Bose"
    And I reset user preferences

  Scenario: User preference page to revert back changes
    Given I navigate to edis main page
    And I go to username menu tab
    And I navigate to user preferences
    And I enter user first name as "Bennie"
    And I enter user last name as "Caesar"
    And I enter user email id as "Bennie.Caesar@usitc.gov"
    And I select first security question as "What city was your mother/father born in?"
    And I enter first security answer as "test"
    And I select second security question as "What grade school did you go to?"
    And I enter second security answer as "test"
    And I update user preferences
