Feature: Generate document verification and destruction report

  Scenario: Generate document verification and destruction report when investigation number is given
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to document verification and destruction report
    And enter report_investigation_num 337
    Then I execute_report
    Then I should see "Displaying 1" on the page


  Scenario: Generate document verification and destruction report when investigation phase is selected
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to document verification and destruction report
    And enter report_investigation_num 337
    When I select Advisory as investigation phase
    And I select "From - Through" date_range
    And I enter 08/01/2011 into date_from
    And I enter 04/08/2012 into date_to
    Then I execute_report
    Then I should see "Displaying 1" on the page

  Scenario: Generate document verification and destruction report when date criteria is selected
      Given I navigate to edis main page
      And I go to report_tab
      And I navigate to document verification and destruction report
      And I select date selected as official received date
      And I select "From - Through" date_range
      And I enter 01/08/2013 into date_from
      And I enter 04/08/2013 into date_to
      Then I execute_report
      Then I should see "Displaying 1" on the page


    Scenario: Generate document verification and destruction report when document id is given
      Given I navigate to edis main page
      And I go to report_tab
      And I navigate to document verification and destruction report
      And I enter document id 601841
      Then I execute_report
      Then I should see "Displaying 1 -" on the page
