Feature: Generate report for user audit access report

  Scenario: Generate user audit access report
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to user audit access report
    And I enter user id as autotest
    When I find user
    Then I click on first result link
    And I execute report
    Then I should see "Displaying 1 - 25 of 46 Results" on the page


  Scenario: Generate user audit access report when audit record date is known
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to user audit access report
    And I enter user id as autotest
    When I find user
    Then I click on first result link
#    And I select audit category as "BULK OUTPUT REQUEST"
    And I select "From - Through" date range as 08/01/2012 to 04/01/2013
    And I execute report
    Then I should see "Displaying 1 - 13 of 13 Results" on the page
