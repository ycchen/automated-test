Feature: Maintain investigation data in InvMgmt tab

  Scenario: To find investigations for investigation number maintenance
    Given I navigate to edis main page
    And I go to inv_mgmt_tab
    And I navigate to maintain investigation data
    And I search by entering investigation number 731-044
    When I search
    Then I click on one of the search results of inv number link
    Then I should see "Investigation Information" on the page


  Scenario: To find investigations by selecting options
    Given I navigate to edis main page
    And I go to inv_mgmt_tab
    And I navigate to maintain investigation data
    And I select investigation phase as "Advisory"
    And I select investigation type as "Import Injury"
    When I search
    Then I click on one of the search results of inv number link
    Then I should see "Investigation Information" on the page