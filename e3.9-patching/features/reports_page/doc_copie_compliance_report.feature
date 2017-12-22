//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017
//Known Failure as of 6/8/2017


Feature: Generate document copies compliance report

  Scenario: Generate document copies compliance report when investigation number is given
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to document copies compliance report
    And enter report_investigation_num 337
    Then I execute_report
    Then I should see "Document Copies Compliance Report" on the page

  Scenario: Generate document copies compliance report when investigation number and investigation phase is selected
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to document copies compliance report
    And enter report_investigation_num 337
    And I select Advisory as investigation phase
    Then I execute_report
    Then I should see "Document Copies Compliance Report" on the page


    Scenario: Generate Document Filing Report by selecting all options
      Given I navigate to edis main page
      And I go to report_tab
      And I navigate to document copies compliance report
      And enter report_investigation_num 337
      When I select Advisory as investigation phase
      And I select "From - Through" date_range
      And I enter 11/23/2012 into date_from
      And I enter 11/25/2014 into date_to
      Then I execute_report
      Then I should see "Displaying 1" on the page