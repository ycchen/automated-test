Feature: Reindex document

  Scenario: Request reindex by document id
    Given I navigate to edis main page
    Then I navigate to admin page
    And I go to reindex document
    And I enter document id as "305799"
    And I request reindex using document id
    Then I should see "Manual reindex  requested on" on the page


  Scenario: Request reindex by investigation number
    Given I navigate to edis main page
    Then I navigate to admin page
    And I go to reindex document
    And I enter investigation number "337-055"
    And I enter investigation phase "Violation"
    And I request reindex using investigation number