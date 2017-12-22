Feature: Generate apo investigation report

  Scenario: Generate apo investigation report when investigation number and investigation phase are given
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to apo investigation report
    And enter report_investigation_num 337
    And I select Advisory as investigation phase
    Then I execute_report
    Then I should see "Results" on the page


  Scenario: Generate apo investigation report when investigation number-investigation phase and document type are given
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to apo investigation report
    And enter report_investigation_num 337
    And I select Advisory as investigation phase
    And I select document type as "Action Jacket"
#    And I select "131-034 Final" as investigation authorities
    Then I execute_report
    Then I should see "Results" on the page