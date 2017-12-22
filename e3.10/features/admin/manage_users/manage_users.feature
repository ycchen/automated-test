Feature: 3406,3495Epic Edis user administer -Manage users

    Scenario: 3495 Search using user id
      Given I navigate to edis main page
      And I navigate to admin page
      And I go to manage users
      And I search user id as Joel
      And I find user
      When I click on first search results link
      Then I should see "First Name" on the page

  Scenario Outline: manage user advanced search
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I navigate to advanced search
    And I enter first name as Joel
    And I enter last name as Moeller
#   And I select office-division as "Office of Information Technology Services"
#   And I enter firm-organization as "USITC"
    And I select internal-external as "Internal"
#   And I select account status as "<select_status>"
    And I find user
    Then I should see "Joel" on the page
  Examples:
    | select_status |
    | Active        |
#    | Disabled       |
#    | Inactive      |
#    | Locked        |

  Scenario: Generate User Audit Access Report
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    Then I navigate to user access report for that user
    And I submit to generate report
    Then I see total records as "2366"
    And I see date as "3/28/09"

  Scenario: Generate User Audit Access Report by multi selecting audit categories and audit record date as from-through and export to PDF format
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    Then I navigate to user access report for that user
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
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    Then I navigate to user access report for that user
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select audit record date as "On"
    And I select audit to date as "10/20/2012"
    And I submit to generate report
    Then I see total records as "2"
    And I see date as "10/20/12"
    And I export results to excel

  Scenario: Generate User Audit Access Report by multi select audit categories and audit record date as On or After and export to CSV format
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    Then I navigate to user access report for that user
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select audit record date as "On or After"
    And I select audit from date as "10/20/2012"
    And I submit to generate report
    Then I see total records as "2"
    And I see date as "10/20/12"
    And I export results to csv

  Scenario: Generate User Audit Access Report by selecting audit categories and audit record date as On or Before and navigate to next results page
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    Then I navigate to user access report for that user
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
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    Then I navigate to user access report for that user
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select sort property for user access report as "Inv Num, Phase"
    And I select sort direction for user access report as "Descending"
    And I select records per page as "25"
    And I submit to generate report
    Then I should see "User Audit Report" on the page


  Scenario: Reset selected options
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    Then I navigate to user access report for that user
    And I multi select audit categories as "ACCESS DENIED" and "APO RELEASE UPDATED" and "BULK IMPORT COMPLETED"
    And I select sort property for user access report as "Inv Num, Phase"
    And I select sort direction for user access report as "Descending"
    And I select records per page as "25"
    Then I reset report info

