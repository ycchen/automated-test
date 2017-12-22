Feature: Generate investigation report

  Scenario: Generate investigation report when investigation number is given
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to investigation report
    And I search for investigation number "701-384"
    And I search
    And I click on appropriate result search link
    And I execute report
    Then I should see "Displaying 1 - 25 of 757 Results" on the page


  Scenario: Generate investigation report when phase and types are selected
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to investigation report
    And I select investigation phase as "Review"
    And I select investigation type as "Import Injury"
    And I search
    And I navigate to next page within report
    And I navigate to next page within report
    And I click on first result search link
    And I execute report
    Then I should see "Displaying 1 - 25 of 323 Results" on the page