Feature: View case manager dashboard in Inv Mgmt tab

  Scenario: To view a document through case manager dash board
    Given I navigate to edis main page
    And I go to inv_mgmt_tab
    And I navigate to view case manager dashboard
    When I search for document id 243648
    And I click go
    Then I should see "Document Detail DOCID: 243648" on the page


   Scenario: To view documents under particular case manager
     Given I navigate to edis main page
     And I go to inv_mgmt_tab
     And I navigate to view case manager dashboard
     When I search for case manager "Bromley, Sally"
     Then I should see "Displaying 1 - 25 of 196 Investigations" on the page