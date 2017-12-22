Feature: Search using Investigation number

  Scenario: To search by investigation
    Given I navigate to edis main page
    When I go to search_tab
    And I navigate to search_by_investigation
    And I search by entering investigation number 701-460
    When I search
    Then I click on one of the search results link
    Then I should see "Displaying 1 - 25" on the page

  Scenario Outline: To search by investigation using all available options
    Given I navigate to edis main page
    When I go to search_tab
    And I navigate to search_by_investigation
    When I search by entering investigation number <inv_num>
    And I select <inv_phase_list> as investigation phase for search
    And I select <inv_type_list> as investigation type for search
    When I search
    Then I click on one of the search results link
    Then I should see "Displaying 1" on the page

  Examples:
    | inv_num | inv_phase_list | inv_type_list |
    | 731-707  | Review2       | Import Injury |

