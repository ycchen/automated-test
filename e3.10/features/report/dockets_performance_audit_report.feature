Feature: 3425-Dockets Performance Audit Report

  Scenario Outline: Generate dockets performance audit report
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to dockets performance audit report
    And I enter performance audit official received from date as "<FromDate>"
    And I enter performance audit official received to date as "<ToDate>"
    And I select time range as "<Range>"
    And I select method filed as "<Filed>"
    And I submit to generate report
    And I should see "Dockets Performance Audit Report" on the page
    And I export results to pdf

  Examples:
    | FromDate   | ToDate     | Range                     | Filed                 |
    | 10/05/2016 | 10/10/2016 | 0 through 24 hours        | All                   |
#    |            |            | 24 hours through 48 hours| Electronic Submission |
#    |            |            | 48 hours                 | Cover Sheet           |

  #Report taking longer to diaplay results  --fix by wait until present 
  Scenario: Generate report selecting range as 24hrs through 48hrs and export to Excel format and then validate pagination
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to dockets performance audit report
    And I enter performance audit official received from date as "06/01/2015"
    And I enter performance audit official received to date as "07/01/2015"
    And I select time range as "24 hours through 48 hours"
    And I select method filed as "All"
    And I submit to generate report
    And I should see "558205" on the page whehn element present
    And I export results to excel
    And I navigate to next page for more results
    And I should see "MICHAEL" on the page


#Report taking longer to diaplay results
  Scenario: Generate report selecting range as 48hrs and export to CSV format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to dockets performance audit report
    And I enter performance audit official received from date as "01/01/2016"
    And I enter performance audit official received to date as "03/01/2016"
    And I select time range as "48 hours"
    And I select method filed as "All"
    And I submit to generate report
    And I should see "572221" on the page now
    And I export results to csv

  Scenario: Validate to verify refine query message
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to dockets performance audit report
    And I enter performance audit official received from date as "03/01/2015"
    And I enter performance audit official received to date as "01/01/2016"
    And I select time range as "48 hours"
    And I select method filed as "Cover Sheet"
    And I submit to generate report
    And I should see "No results were returned for your report criteria. Please refine your criteria and try again." on the page

  Scenario: Generate report selecting range as 24hrs through 48hrs and filed by Electronic Submission
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to dockets performance audit report
    And I enter performance audit official received from date as "06/01/2015"
    And I enter performance audit official received to date as "01/01/2016"
    And I select time range as "24 hours through 48 hours"
    And I select method filed as "Electronic Submission"
    And I submit to generate report
    And I should see "No results were returned for your report criteria. Please refine your criteria and try again." on the page


  Scenario: Reset dockets performance audit report
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to dockets performance audit report
    And I enter performance audit official received from date as "09/01/2015"
    And I enter performance audit official received to date as "01/01/2016"
    And I select time range as "0 through 24 hours"
    And I select method filed as "All"
    And I reset report info