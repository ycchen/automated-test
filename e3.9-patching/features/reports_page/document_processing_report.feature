Feature: To generate Document Processing Report

  Scenario: Generate Document Processing Report
    Given I navigate to edis main page
    And I go to report_tab
    And navigate to document_processing_report
    And I enter 07/01/2012 into processing_from_date
    And I enter 07/10/2012 into processing_to_date
    Then I process_execute_report
    Then I should see "Within 24 hours" on the page
