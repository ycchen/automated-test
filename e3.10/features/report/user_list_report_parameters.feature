Feature: 3789-User list report-parameters

  Scenario: Generate user list report with user id
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to user list report
    And I enter user ID as "autotest"
    And I submit to generate report
    Then I should see "AUTOTEST" on the page
    And I should see "AUTOTEST1" on the page
    And I should see "AUTOTEST11" on the page
    And I should see "AUTOTEST12" on the page


  Scenario: Generate user list report by selecting all values
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to user list report
    And I enter user ID as "autotest"
    And I enter user list report first name as "rac"
    And I enter user list report last name as "B"
    And I select user list report internal-external as "All"
    And I select user list report office-division as "Office of Information Technology Services"
    And I select user list report firm-org as "TESTING"
    And I select user list report account status as "Active"
    And I submit to generate report
    Then I should see "AUTOTEST" on the page
    And I see office-division as "Office of Information Technology Services"
    And I see firm-org as "TESTING"

  Scenario: Generate user list report and export it to PDF form
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to user list report
    And I enter user ID as "autotest"
    And I enter user list report first name as "rac"
    And I enter user list report last name as "B"
    And I select user list report internal-external as "All"
    And I select user list report office-division as "Office of Information Technology Services"
    And I select user list report firm-org as "TESTING"
    And I select user list report account status as "Active"
    And I submit to generate report
    And I export results to pdf

  Scenario: Generate user list report and export it to CSV form
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to user list report
    And I enter user ID as "autotest"
    And I enter user list report first name as "rac"
    And I enter user list report last name as "B"
    And I select user list report internal-external as "All"
    And I select user list report office-division as "Office of Information Technology Services"
    And I select user list report firm-org as "TESTING"
    And I select user list report account status as "Active"
    And I submit to generate report
    And I export results to csv

  Scenario: Generate user list report and export it to excel form
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to user list report
    And I enter user ID as "autotest"
    And I enter user list report first name as "rac"
    And I enter user list report last name as "B"
    And I select user list report internal-external as "All"
    And I select user list report office-division as "Office of Information Technology Services"
    And I select user list report firm-org as "TESTING"
    And I select user list report account status as "Active"
    And I submit to generate report
    And I export results to excel

  Scenario: Generate user list report by selecting result preferences
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to user list report
    And I enter user ID as "autotest"
    And I enter user list report first name as "rac"
    And I enter user list report last name as "B"
    And I select user list report internal-external as "Internal"
    And I select user list report office-division as "Office of Information Technology Services"
    And I select user list report firm-org as "TESTING"
    And I select user list report account status as "Active"
    And I select sort property as "User ID"
    And I select sort direction as "Descending"
    And I select records per page as "25"
    And I submit to generate report
    Then I should see "AUTOTEST" on the page


  Scenario: Generate user list report and test paging
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to user list report
    And I enter user ID as "jason"
    And I submit to generate report
    Then I should see "ALPERJASON" on the page
    And I navigate to next page for more results
    Then I should see "JASONANGELL" on the page


  Scenario: Reset user list report after selecting all values
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to user list report
    And I enter user ID as "autotest"
    And I enter user list report first name as "rac"
    And I enter user list report last name as "B"
    And I select user list report office-division as "Office of Information Technology Services"
    And I select user list report firm-org as "TESTING"
    And I select user list report account status as "Active"
    And I select sort property as "User ID"
    And I select sort direction as "Descending"
    And I select records per page as "25"
    And I reset report info