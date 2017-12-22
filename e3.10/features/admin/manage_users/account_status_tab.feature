Feature: 3499, 3782 Account Tab

  Scenario: validate account status
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to account tab
    And I choose account status as Active
    And I verify user question1 as "What is your favorite vegetable"
    And I verify user answer1 as "asparagus"
    And I verify user question2 as "What is your favorite restaurant"
    And I verify user answer2 as "duplex diner"


  Scenario: validate rest account status
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to account tab
    And I choose account status as Disable
    And I reset

  Scenario: validate cancel account status
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to account tab
    And I choose account status as Disable
    And I cancel user details

  Scenario: 3782 There should be validation to prevent the logged in user from self assigning account status
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as bcaesar
    And I find user
    When I click on first search result link
    And I navigate to account tab
    And page should have text "User Account information cannot be modified by the owner of the account"