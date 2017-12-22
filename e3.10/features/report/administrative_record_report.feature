Feature: 3419-Administrative Record Report

  Scenario: Generate Administrative Record Report by investigation number
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "337" as investigation number
    And I submit to generate report
    Then I see investigation number as "337-998"
    And I select first result in investigation list
    Then I should see "A report containing an inventory of all documents submitted for an investigation." on the page


  Scenario: Generate Administrative Record Report by selecting investigation phase, type
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I submit to generate report
    Then I should see "Total Records:" on the page

  Scenario: Generate Administrative Record Report in PDF format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I submit to generate report
    Then I see total records as "176"
    And I see document number as "3517"
    And I view report in pdf format

  Scenario: Generate Administrative Record Report in Excel format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I submit to generate report
    Then I see total records as "176"
    And I see document number as "3517"
    And I view report in excel format

  Scenario: Generate Administrative Record Report in CSV format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I submit to generate report
    Then I see total records as "176"
    And I see document number as "3517"
    And I view report in csv format

  Scenario: Generate Administrative Record Report and test paging
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I submit to generate report
    And I navigate to next page for more results
    And I see document number as "3529"

  Scenario: Reset report selection for administrative record
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
#    And I submit to generate report
    And I reset report info

  Scenario: Generate report by selecting sort by property, direction and per page
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I select sort property as "Inv Num, Phase"
    And I select sort direction as "Descending"
    And I select records per page as "25"
    And I submit to generate report
    And I navigate to next page for more results
    And I see document number as "66959"

  Scenario: Reset report selection
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "201-065" as investigation number
    And I select Final as investigation phase
    And I select Import Injury as investigation type
    And I enter text "Broom" as investigation title
    And I select "Inactive" as investigation status
    And I submit to generate report
    Then I see investigation number as "201-065"
    And I select first result in investigation list
    And I select sort property as "Inv Num, Phase"
    And I select sort direction as "Descending"
    And I select records per page as "25"
    And I reset report info

  Scenario: Multi select investigation phase and type to generate Administrative Record Report
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "731-1103" as investigation number
    And I multi select "Final" and "Review" and "Violation" as investigation phase
    And I multi select "Import Injury" and "Sec 337" and "Industry and Economic Analysis" as investigation type
    And I submit to generate report
    Then I see investigation number as "731-1103"
    And I select first result in investigation list
    And I submit to generate report
    Then I see total records as "183"
    And I see document number as "265262"

  Scenario: 1023 Display message when more than 10000records are retrieved when a report is generated
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to administrative record report
    And I enter "701-270" as investigation number
    And I submit to generate report
    Then I see investigation number as "701-270"
    And I select first result in investigation list
    And I submit to generate report
    Then I should see "No results were returned for your report criteria. Please refine your criteria and try again." on the page