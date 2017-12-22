Feature: Generate user list report

  Scenario: Generate user audit access report
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to user audit report
    And I enter user id as autotest
    And I execute user list report
    Then I should see "Displaying 1 - 1 of 1 Results" on the page

