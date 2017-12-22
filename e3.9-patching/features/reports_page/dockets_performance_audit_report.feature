Feature: To generate dockets performance audit report

  Scenario: To generate dockets performance report for time range >48 hours
    Given I navigate to edis main page
    And I go to report_tab
    And navigate to dockets performance audit report
    And I enter received date as "01/01/2011"
    And I enter through date as "01/22/2011"
    And I select time range as ">48 hours"
    And I execute report
    Then I should see ">48 hours" on the page


  Scenario: To generate dockets performance report for time range >24 hours through 48 hours
    Given I navigate to edis main page
    And I go to report_tab
    And navigate to dockets performance audit report
    And I enter received date as "01/01/2011"
    And I enter through date as "01/22/2011"
    And I select time range as ">24 hours through 48 hours"
    And I execute report
    Then I should see ">24 hours through 48 hours" on the page


  Scenario: To generate dockets performance report for time range 0 through 24 hours
    Given I navigate to edis main page
    And I go to report_tab
    And navigate to dockets performance audit report
    And I enter received date as "01/02/2017"
    And I enter through date as "01/09/2017"
    And I select time range as "0 through 24 hours"
    And I execute report
    Then I should see "0 through 24 hour" on the dockets performance Audit report page




