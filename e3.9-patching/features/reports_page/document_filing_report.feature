Feature: To generate Document Filing Report

  Scenario: Generate Document Filing Report when official received date is known
    Given I navigate to edis main page
    And I go to report_tab
    And navigate to document_filing_report
    When I select "From - Through" date_range
    And I enter 08/03/2016 into date_from
    And I enter 09/01/2016 into date_to
    Then I execute_report
    Then I should see "Documents Filed Report From - Through 08/03/2016 and 09/01/2016" on the page


  Scenario Outline: Generate Document Filing Report
    Given I navigate to edis main page
    And I go to report_tab
    And navigate to document_filing_report
    When I select "<date_list>" date_range
    And I enter <from_date> into date_from
    And I enter <to_date> into date_to
    And enter report_investigation_num <inv_num>
    Then I execute_report
    Then I should see "601572" on the page
  Examples:
    | date_list      | from_date  | to_date    | inv_num |
    | From - Through | 03/07/2016 | 04/12/2017 | 701-460 |


  Scenario Outline: Generate Document Filing Report by selecting all options
    Given I navigate to edis main page
    And I go to report_tab
    And navigate to document_filing_report
    When I select "<date_list>" date_range
    And I enter <from_date> into date_from
    And I enter <to_date> into date_to
    And enter report_investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    Then I execute_report
    Then I should see "Displaying 1" on the page
  Examples:
    | date_list      | from_date  | to_date    | inv_num | inv_phase_list | inv_type_list                | doc_type_list | security_level_list |
    | From - Through | 07/23/2016 | 09/01/2016 | 103-029 | Final        | Industry and Economic Analysis | Voting Sheet | Public              |
