Feature: External User New Document Submission

  Scenario: External New Document Submission
    Given I navigate to edis page for external
    And I go to submission tab
    And I click Save and Continue for next card
    And I select "Import Injury" as investigation type for filing
    And I click Save and Continue for next card
    And I click Yes
    Then I should see "Petition Acknowledgement" on the page
    Then I click No on Petition Acknowledgement
    And I click Cancel
    Then I click Yes on Petition Acknowledgement
    And I click Save and Continue for next card
    Then I should see "New Request" on the page
    And I click New Request Card
    And I click No
    Then I should see "In which Import Injury phase is the investigation?" on the page
    And I click Investigation Type card
    And I select "Sec 337" as investigation type for filing
    And I click Save and Continue for next card
    And I click Yes
    Then I should see "Complaint Acknowledgement" on the page
    Then I click Yes on Complaint Acknowledgement
    And I click Save and Continue for next card
    Then I should see "New Request" on the page
    And I click New Request Card
    And I click No
    Then I should see "In which Sec 337 phase is the investigation?" on the page
