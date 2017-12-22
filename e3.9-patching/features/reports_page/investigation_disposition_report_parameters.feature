Feature: Generate Investigation Disposition Report Parameters

  Scenario: Generate report when tentative termination date range is selected
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to investigation disposition report
    When I select "From - Through" tentative termination date range as 03/02/2013 to 03/06/2017
    And I execute report
    Then I should see "Displaying 1 - 3 of 3 Results" on the page

  Scenario: Generate report when litigation hold date range is selected
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to investigation disposition report
    When I select "From - Through" litigation hold date range as 03/02/2013 to 03/06/2017
    And I execute report
    Then I should see "Displaying 1 - 25 of 326 Results" on the page


  Scenario: Generate report when investigation number is given
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to investigation disposition report
    When I select "From - Through" tentative termination date range as 03/02/2013 to 03/06/2017
    And I search for investigation number "337-567"
    And I execute report
    Then I should see "Displaying 1 - 1 of 1 Results" on the page

  Scenario: Generate report when tentative termination date range-investigation phase and investigation type are selected
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to investigation disposition report
    When I select "From - Through" tentative termination date range as 03/02/2013 to 03/06/2017
    And I select investigation phase as "Advisory"
    And I select investigation type as "Sec 337"
    And I execute report
    Then I should see "Displaying 1 -" on the page


  Scenario: Generate report when litigation hold date range-investigation phase and investigation type are selected
    Given I navigate to edis main page
    And I go to report_tab
    And I navigate to investigation disposition report
    When I select "From - Through" litigation hold date range as 03/02/2013 to 03/06/2017
    And I select investigation phase as "Review"
    And I select investigation type as "Import Injury"
    And I execute report
    Then I should see "Displaying 1 - 25 of 64 Results" on the page
