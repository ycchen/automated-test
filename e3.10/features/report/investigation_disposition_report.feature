Feature: 3820-Investigation Disposition Report

  Scenario: Generate Investigation Disposition Report
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation disposition report
    And I enter investigation number as "731" to generate report
    And I select tentative termination date as "From - Through"
    And I enter tentative termination from date as "06/01/2015"
    And I enter tentative termination to date as "01/12/2016"
    And I select litigation hold date range as "From - Through"
    And I select litigation hold date from date as "01/01/2015"
    And I select litigation hold date to date as "01/12/2016"
    And I select investigation phase for report as "Final"
    And I select disposition report investigation type as "Import Injury"
    And I select disposition report investigation status as "Active"
    And I submit to generate report
    And I should see "No results were returned for your report criteria. Please refine your criteria and try again." on the page


  Scenario: Generate Report by multi selecting investigation phase and date range as On or Before and export to pdf
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation disposition report
    And I enter investigation number as "731" to generate report
    And I select tentative termination date as "On or Before"
    And I enter tentative termination to date as "01/12/2016"
    And I select litigation hold date range as "On or Before"
    And I select litigation hold date to date as "01/12/2016"
    And I multi select investigation phase as "Advisory" and "Enforcement" and "Final"
    And I submit to generate report
    And I should see "731-1013 - Final" on the page
    And I export results to pdf

  Scenario: Generate Report by selecting investigation type and status and date range as On or After and export to csv
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation disposition report
    And I enter investigation number as "731" to generate report
    And I select tentative termination date as "On or After"
    And I enter tentative termination from date as "01/01/2011"
    And I select litigation hold date range as "On or After"
    And I select litigation hold date from date as "01/01/2011"
    And I select disposition report investigation type as "Import Injury"
    And I select disposition report investigation status as "Active"
    And I submit to generate report
    And I should see "731-1088" on the page
    And I export results to csv

  Scenario: Generate Report by multi selecting investigation phase and date range as On or Before and export to excel, pagination
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation disposition report
    And I enter investigation number as "731" to generate report
    And I select tentative termination date as "On or Before"
    And I enter tentative termination to date as "01/12/2016"
    And I select litigation hold date range as "On or Before"
    And I select litigation hold date to date as "01/12/2016"
    And I multi select investigation phase as "Advisory" and "Enforcement" and "Final"
    And I select disposition report investigation status as "All"
    And I submit to generate report
    And I should see "731-1013 - Final" on the page
    And I navigate to next page for more results
    And I should see "731-865 - Final" on the page
    And I export results to excel

  Scenario: Generate Report by selecting investigation type, status and date range as On
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to investigation disposition report
    And I enter investigation number as "103" to generate report
    And I select tentative termination date as "On"
    And I enter tentative termination to date as "03/15/2011"
    And I select litigation hold date range as "On"
    And I select litigation hold date to date as "03/15/2011"
    And I select disposition report investigation type as "Rule Making"
    And I select disposition report investigation status as "Inactive"
    And I submit to generate report
    And I should see "No results were returned for your report criteria. Please refine your criteria and try again." on the page


    Scenario: Reset values
      Given I navigate to edis main page
      And I go to report tab
      And I navigate to investigation disposition report
      And I enter investigation number as "731" to generate report
      And I select tentative termination date as "From - Through"
      And I enter tentative termination from date as "06/01/2015"
      And I enter tentative termination to date as "01/12/2016"
      And I select litigation hold date range as "From - Through"
      And I select litigation hold date from date as "01/01/2015"
      And I select litigation hold date to date as "01/12/2016"
      And I select investigation phase for report as "Final"
      And I select disposition report investigation type as "Import Injury"
      And I select disposition report investigation status as "Active"
      And I reset report info