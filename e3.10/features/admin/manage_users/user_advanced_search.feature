Feature: 3497 3496 Advanced search

  Scenario: 3496 manage user advanced search
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I navigate to advanced search
    And I enter first name as Joel
    And I enter last name as Moeller
    And I select office-division as "Office of Information Technology Services"
    And I enter firm-organization as "USITC"
    And I select internal-external as "Internal"
    And I select account status as "Active"
    And I find user
    Then I should see "Joel" on the page

  Scenario: 3497 searched for user id result set should display user first name, last name, firm
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    And page should have text "Joel Moeller"
    #And page should have text "Internal"
    And page should have text "USITC"
    And page should have text " Active"
