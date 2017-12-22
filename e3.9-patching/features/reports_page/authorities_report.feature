Feature: Generate authorities report

  Scenario: Generate authorities report
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to authorities report
    And I select "ALJ" as authority groups
    And I select "Admin - Firm Org" as authorities
    Then I execute_report
    Then I should see "Authorities Report" on the page