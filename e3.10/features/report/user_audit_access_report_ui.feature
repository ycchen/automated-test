Feature: 3423-User Audit Access Report UI

#Scenarios Related to User Audit Access Report are covered in manage users feature

  Scenario: Generate User Audit Access Report
    Given I navigate to edis main page
    And I go to report tab
    Then I navigate to user audit access report
    And I submit to generate report
    Then I see total records as "42,931"


  Scenario: Generate User Audit Access Report by multi selecting audit categories and audit record date as from-through and export to PDF format
    Given I navigate to edis main page
    And I go to report tab
    Then I navigate to user audit access report
    And I enter user ID as "autotest"
    And I submit to generate report
    And I select user
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select audit record date as "From-Through"
    And I select audit from date as "08/26/2012"
    And I select audit to date as "08/26/2015"
    And I submit to generate report
    Then I see total records as "2"
    And I see date as "10/20/12"
    And I export results to pdf

  Scenario: Generate User Audit Access Report by multi selecting audit categories and audit record date as on and export to Excel format
    Given I navigate to edis main page
    And I go to report tab
    Then I navigate to user audit access report
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select audit record date as "On"
    And I select audit to date as "10/20/2012"
    And I submit to generate report
    Then I see total records as "2"
    And I see date as "10/20/12"
    And I export results to excel

  Scenario: Generate User Audit Access Report by multi select audit categories and audit record date as On or After and export to CSV format
    Given I navigate to edis main page
    And I go to report tab
    Then I navigate to user audit access report
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select audit record date as "On or After"
    And I select audit from date as "10/20/2012"
    And I submit to generate report
    Then I see total records as "2"
    And I see date as "10/20/12"
    And I export results to csv

  Scenario: Generate User Audit Access Report by selecting audit categories and audit record date as On or Before and navigate to next results page
    Given I navigate to edis main page
    And I go to report tab
    Then I navigate to user audit access report
    And I select audit record date as "On or Before"
    And I select audit to date as "10/20/2012"
    And I submit to generate report
    Then I see total records as "1424"
    And I see date as "3/28/09"
    And I navigate to next page for more results
    Then I see total records as "1424"
    And I see date as "3/28/09"


  Scenario: Generate User Audit Access Report by selecting sort property, direction and records per page
    Given I navigate to edis main page
    And I go to report tab
    Then I navigate to user audit access report
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select sort property for user access report as "Inv Num, Phase"
    And I select sort direction for user access report as "Descending"
    And I select records per page as "25"
    And I submit to generate report


  Scenario: Reset selected options
    Given I navigate to edis main page
    And I go to report tab
    Then I navigate to user audit access report
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select sort property for user access report as "Inv Num, Phase"
    And I select sort direction for user access report as "Descending"
    And I select records per page as "25"
    Then I reset report info

