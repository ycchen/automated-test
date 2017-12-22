Feature: 3788 Authorities report-parameters

  Scenario: Generate authorities report by selecting authority group, authorities and investigation authorities
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to authorities report
    And I select authority group as "Autotest"
    And I select user list authorities as "Dockets Desk - Accept Documents"
    And I select investigation authorities as "731-1306 Final"
    And I select records per page as "25"
    And I submit to generate report
    Then page should have text "Autotest"

  Scenario: Generate authorities report by selecting authority group, authorities and investigation authorities in PDF form
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to authorities report
    And I select authority group as "Autotest"
    And I select user list authorities as "Dockets Desk - Accept Documents"
    And I select investigation authorities as "731-1306 Final"
    And I select records per page as "25"
    And I submit to generate report
    And I export results to pdf

  Scenario: Generate authorities report by selecting authority group, authorities and investigation authorities in Excel form
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to authorities report
    And I select authority group as "Autotest"
    And I select user list authorities as "Dockets Desk - Accept Documents"
    And I select investigation authorities as "731-1306 Final"
    And I select records per page as "10"
    And I submit to generate report
    And I export results to excel

  Scenario: Generate authorities report by selecting authority group, authorities and investigation authorities in CSV form
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to authorities report
    And I select authority group as "Autotest"
    And I select user list authorities as "Dockets Desk - Accept Documents"
    And I select investigation authorities as "731-1306 Final"
    And I select records per page as "25"
    And I submit to generate report
    And I export results to csv

  Scenario: Multi select authority group, authorities and investigation authorities and test pagination
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to authorities report
    And I multi select authority group as "Autotest" and "ALJ"
    And I multi select user list authorities as "Admin - Authority Groups" and "Admin - Firm Org"
    And I multi select investigation authorities as "731-1306 Final" and "701-365 Review3"
    And I submit to generate report
    Then page should have text "ANNMARIE"
    And I navigate to next page for more results
    Then page should have text "ALJ, Autotest"

  Scenario: When reports results are more than 10,000 it should display message to refine query
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to authorities report
    And I multi select authority group as "Autotest" and "ALJ"
    And I multi select user list authorities as "Dockets Desk - Accept Documents" and "Filing - Cover Sheet"
    And I multi select investigation authorities as "731-1306 Final" and "701-458 Prelim"
    And I submit to generate report
#    Then page should have text "Your report generated 36,842 results, more than the 10,000 results permitted. Please refine your report parameters."
    Then page should have text "Please refine your report parameters"


  Scenario: Reset values selected
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to authorities report
    And I select authority group as "Autotest"
    And I select user list authorities as "Dockets Desk - Accept Documents"
    And I select investigation authorities as "731-1306 Final"
    And I select records per page as "25"
    And I reset report info

