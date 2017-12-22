Feature: Generate administrative record report

  Scenario: Generate administrative record report when investigation number is given
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to administrative record report
    And I search for investigation number "332-420"
    And I search
    And I click on first result search link
    And I execute report
    Then I should see "Admin Record Report" on the page


    Scenario: Generate investigation report when phase and types are selected
      Given I navigate to edis main page
      And I go to report_tab
      And I navigate to administrative record report
      And I select investigation phase as "Advisory"
      And I select investigation type as "Import Injury"
      And I search
      And I click on investigation number 104-12347
      And I execute report
      Then I should see "701-414 Advisory" on the page