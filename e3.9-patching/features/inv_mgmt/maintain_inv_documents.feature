Feature: Maintain investigation documents

  Scenario: Investigation types displayed when searched by case manager
    Given I navigate to edis main page
    And I go to inv_mgmt_tab
    And I navigate to maintain investigation documents
    When I select case_manager_name "Mullan, Jessica"
    And I filter
    Then I click on the search results link
    And I click on doc id search result link
    Then I should see "Document Detail DOCID:" on the page


    Scenario: Investigation types displayed when searched by document id
      Given I navigate to edis main page
      And I go to inv_mgmt_tab
      And I navigate to maintain investigation documents
      When I search for document id 229089
      And I click go
      Then I should see "Document Detail DOCID: 229089" on the page










