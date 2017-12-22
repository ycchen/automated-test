Feature: Registration page

  Scenario: Register an user by providing required information
    Given I am on EDIS home page
    And I navigate to register page
    And I accept user arguments
    And I enter first name as "auto"
    And I enter last name as "register"
    And I enter office-division as "Office of Investigations"
    And I enter email address as "rachana.bukka@usitc.gov"
    And I enter user id
    And I enter password as "autoreg123!"
    And I enter confirm password as "autoreg123!"
    And I select first question as "Who is your favorite actor/actress?"
    And I enter first question answer as "actor"
    And I select second question as "What is your favorite movie?"
    And I enter second question answer as "movie"
    And I register
    And I confirm registration

  Scenario: Reset a register page
    Given I am on EDIS home page
    And I navigate to register page
    And I accept user arguments
    And I enter first name as "auto"
    And I enter last name as "register"
    And I enter office-division as "Office of Investigations"
    And I enter email address as "rachana.bukka@usitc.gov"
    And I enter user id
    And I enter password as "autoreg123!"
    And I enter confirm password as "autoreg123!"
    And I select first question as "Who is your favorite actor/actress?"
    And I enter first question answer as "actor"
    And I select second question as "What is your favorite movie?"
    And I enter second question answer as "movie"
    And I reset on registration page