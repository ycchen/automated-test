Feature: 3377- EDIS Investigation Report not showing Action Jacket Control Number

  Scenario: 1a.Update an existing document with action jacket control number and make sure its in validated status
    Given I navigate to edis main page
    And I go to inv_mgmt_tab
    And I navigate to maintain investigation documents
    When I search for document id 500030
    And I click go
    When I enter action jacket control number as 2929
    And I save changes


    Scenario: 1b.After updating action jacket control number make sure it displays in investigation report
      Given I navigate to edis main page
      And I go to report_tab
      And I navigate to investigation report
      And I search for investigation number "332-420"
      And I search
      And I click on first result search link
      And I sort order by Descending
      And I execute report
#      And I navigate to first investigation report results link
#     And action jacket control number 2929 exists









