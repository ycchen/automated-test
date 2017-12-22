Feature: Help footer links

  Scenario: edis3 user guide link
    Given I navigate to edis main page
    And I navigate to edis3 user guide link

  Scenario: edis3 web service guide link
    Given I navigate to edis main page
    And I navigate to edis3 web service guide link


  Scenario: all edis help documents link
    Given I navigate to edis main page
    And I navigate to all edis help documents link
    Then I should see "EDIS Help Menu" on the page
