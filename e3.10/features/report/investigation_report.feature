Feature: 3421-Investigation Report

  Scenario: Generate Investigation Report by investigation number
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I enter "337" as investigation number
    And I submit to generate report
    Then I see investigation number as "337-944"
    And I select first result in investigation list
    And I submit to generate report
    Then I should see "(560299 - Public)" on the page

  Scenario: Generate Investigation Report by selecting investigation phase, type
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I submit to generate report

  Scenario: Generate Investigation Report in PDF format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I select security levels as "Public"
    And I submit to generate report
    Then I see total records as "6"
    And I see document number as "(9583 - Public)"
    And I view report in pdf format

  Scenario: Generate Investigation Report in Excel format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I select security levels as "Public"
    And I submit to generate report
    Then I see total records as "6"
    And I see document number as "(9583 - Public)"
    And I view report in excel format

  Scenario: Generate Investigation Report in CSV format
  Generate Investigation Report in PDF format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I select security levels as "Public"
    And I submit to generate report
    Then I see total records as "6"
    And I see document number as "(9583 - Public)"
    And I view report in csv format

  Scenario: Generate Investigation Report and test paging
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I enter "337-945" as investigation number
    And I submit to generate report
    Then I see investigation number as "337-945"
    And I select first result in investigation list
    And I select security levels as "Public"
    And I submit to generate report
    Then I see total records as "296"
    And I see document number as "(549675 - Public)"
    And I navigate to next page for more results
    And I see document number as "(549837 - Public)"

  Scenario: Reset report selection for investigation report
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I reset report info

  Scenario: Generate report by selecting sort by property, direction and per page
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I select security levels as "Public"
    And I select sort property as "Inv Num, Phase"
    And I select sort direction as "Descending"
    And I select records per page as "25"
    And I submit to generate report
    And I navigate to next page for more results
    And I see document number as "(3625 - Public)"

  Scenario: Reset report selection
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I select security levels as "Public"
    And I select sort property as "Inv Num, Phase"
    And I select sort direction as "Descending"
    And I select records per page as "25"
    And I reset report info

  Scenario: Multi select investigation phase and type to generate Administrative Record Report
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I enter "103" as investigation number
    And I multi select "Final" and "Review" and "Violation" as investigation phase
    And I multi select "Import Injury" and "Sec 337" and "Industry and Economic Analysis" as investigation type
    And I submit to generate report
    Then I see investigation number as "731-1039"
    And I select first result in investigation list
    And I multi select security levels as "Public" and "Confidential" and "Limited"
    And I submit to generate report
    Then I see total records as "177"
    And I see document number as "(265262 - Public)"

    Scenario: 1023 Display message to refine criteria
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation report
    And I enter "103" as investigation number
    And I submit to generate report
    Then I see investigation number as "731-1034"
    And I select first result in investigation list
    And I select security levels as "Limited"
    And I submit to generate report
    Then I should see "No results were returned for your report criteria. Please refine your criteria and try again." on the page
