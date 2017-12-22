Feature: 3426 Document Verification And Destruction Report

  Scenario: Generate Document Verification And Destruction Report by selecting Inv number and date criteria as From-Through export to PDF format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document verification and destruction report
    And I enter investigation number as "731" to generate report
    And I select date criteria as "From - Through"
    And I enter official_received_from date as "06/01/2015"
    And I enter official_received_to date as "01/12/2016"
    And I submit to generate report
    And I should see "731-1047 Review2" on the page
    And I export report to pdf format

  Scenario: Generate report by selecting Inv number, Doc Id, date criteria as ON or After and export to Excel format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document verification and destruction report
    And I enter investigation number as "731" to generate report
    And I select date criteria as "On or After"
    And I enter official_received_from date as "01/01/2015"
    And I enter document id for report as "552705"
    And I submit to generate report
    And I should see "731-1013 Review2" on the page
    And I export report to excel format

   Scenario: Generate report by selecting Inv number and date criteria as ON
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document verification and destruction report
    And I enter investigation number as "731" to generate report
    And I select date criteria as "On"
    And I enter official_received_to date as "01/01/2016"
    And I enter date selected as "Official Received Date"
    And I enter document to return as "All Documents"
    And I submit to generate report
    And I should see "No results were returned for your report criteria. Please refine your criteria and try again." on the page

  Scenario: Generate report by selecting Inv number, multi selecting Inv Phase, date criteria as On or Before and test pagination export to csv
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document verification and destruction report
    And I enter investigation number as "337" to generate report
    And I select date criteria as "On or Before"
    And I enter official_received_to date as "01/12/2016"
    And I multi select investigation phase as "Advisory" and "Enforcement" and "Final"
    And I submit to generate report
    And I should see "337-334 Advisory" on the page
    And I navigate to next page for more report results
    And I should see "337-334 Advisory" on the page
    And I export report to csv format

  Scenario: Generate report by selecting Inv number, Date selected and Documents to return
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document verification and destruction report
    And I enter investigation number as "337" to generate report
    And I select date criteria as "From - Through"
    And I enter official_received_from date as "01/01/2015"
    And I enter official_received_to date as "01/12/2016"
    And I enter date selected as "Verified Date"
    And I enter document to return as "Only Destroyed Documents"
    And I submit to generate report
    And I should see "Verification and Destruction Report" on the page

  Scenario: Generate report by selecting Inv number, Date selected and Documents to return as destroyed date
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document verification and destruction report
    And I enter investigation number as "337" to generate report
    And I select date criteria as "From - Through"
    And I enter official_received_from date as "01/01/2015"
    And I enter official_received_to date as "01/12/2016"
    And I enter date selected as "Destroyed Date"
    And I enter document to return as "Excluding Destroyed Documents"
    And I submit to generate report
    And I should see "No results were returned for your report criteria. Please refine your criteria and try again." on the page

  Scenario: Generate report by selecting Inv number, Date selected and Documents to return as none
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document verification and destruction report
    And I enter investigation number as "337" to generate report
    And I select date criteria as "From - Through"
    And I enter official_received_from date as "01/01/2016"
    And I enter official_received_to date as "01/12/2016"
    And I enter date selected as "None"
    And I enter document to return as "Excluding Destroyed Documents"
    And I submit to generate report
    And I should see "Please refine your report parameters." on the page

  Scenario: Reset selected values
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document verification and destruction report
    And I select date criteria as "From - Through"
    And I enter official_received_from date as "01/01/2015"
    And I enter official_received_to date as "01/12/2016"
    And I enter investigation number as "337" to generate report
    And I multi select investigation phase as "Advisory" and "Enforcement" and "Final"
    And I enter date selected as "Official Received Date"
    And I enter document to return as "All Documents"
    And I enter document id for report as "558495"
    And I reset report info