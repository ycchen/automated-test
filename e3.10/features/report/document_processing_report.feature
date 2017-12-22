Feature: 3418-Document Processing Report

  Scenario: To generate a processed report
    Given I navigate to edis main page
    And I go to report tab
    And I go to document processed report
    #Then I should see "Document Processing Report" on the page
    Then I should see "Dockets Performance Report" on the page
    And I enter official received from date as "09/01/2014"
    And I enter official received to date as "09/26/2014"
    And I submit to generate report
    Then I should see "Document Processing Report for 09/01/2014 through 09/26/2014" on the page

  Scenario: To generate a processed report and export results to PDF
    Given I navigate to edis main page
    And I go to report tab
    And I go to document processed report
    And I enter official received from date as "09/01/2014"
    And I enter official received to date as "09/26/2014"
    And I submit to generate report
    Then I should see "Document Processing Report for 09/01/2014 through 09/26/2014" on the page
    And I export results to pdf
#    And I export results to pdf, failed coz its taking long time to display results

  Scenario: To generate a processed report and export results to Excel
    Given I navigate to edis main page
    And I go to report tab
    And I go to document processed report
    And I enter official received from date as "09/01/2014"
    And I enter official received to date as "09/26/2014"
    And I submit to generate report
    Then I should see "Document Processing Report for 09/01/2014 through 09/26/2014" on the page
    And I export results to excel
#    And I export results to excel   Its failed coz its taking long time to display results

  Scenario: To generate a processed report and export results to CSV
    Given I navigate to edis main page
    And I go to report tab
    And I go to document processed report
    And I enter official received from date as "09/01/2014"
    And I enter official received to date as "09/26/2014"
    And I submit to generate report
    Then I should see "Document Processing Report for 09/01/2014 through 09/26/2014" on the page
    And I export results to csv
#    And I export results to csv   Its failed coz its taking long time to display results

  Scenario: Reset a processed report
    Given I navigate to edis main page
    And I go to report tab
    And I go to document processed report
    And I enter official received from date as "09/01/2014"
    And I enter official received to date as "09/26/2014"
    And I reset report info

#  Scenario: 1023 Display message when more than 10000records are retrieved when a report is generated
#    Given I navigate to edis main page
#    And I go to report tab
#    And I go to document processed report
#    And I enter official received from date as "11/01/2010"
#    And I enter official received to date as "09/26/2014"
#    And I submit to generate report
#    Then I should see "Service Temporarily Unavailable" on the page