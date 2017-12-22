Feature: Generate APO Release

Scenario: Modify and Release Media-Go to document editor,select APO release and save and Return to Release Info
    Given I navigate to edis page
    And I go to case management tab
    And I Generate APO Release
    Then I should see "Search for Investigation" on the page
    And I enter Investigation Number as "701-441"
    And I select "Prelim" as Investigation Phase
    And I select "Import Injury" as Investigation Type
    And I Find Investigation
    Then I should see "Investigation Search Results" on the page
    And I click on Inv Number
    Then I should see "Release Information" on the page
    And I click Reprint
    Then I should see "You must select at least one existing release." on the page
    And I click Create New Release
    And I click Submit Release
    Then I should see "APO Release should contain at least one document." on the page
    And I switch flag for APO Release
    And I switch flag for Status
    And I switch flag for Security
    And I click Filter
    And I switch flag for Security
    And I click Filter
    And I click Doc ID
    And I check APO Release
    Then I click Enable status
    And I select "Review"
    And I Save and Return
    And I switch flag for APO Release
    And I click Filter
    And I click Doc ID
    Then I click Enable status
    And I select "Validated"
    And I Save and Return
    Then I select Doc ID for release
    And I click Submit Release
    Then I should see "APO Release - Details" on the page
    And I click Return to Release Info
    And I should see "Draft Release" on the page
    And I delete Draft Release
    And I click Create New Release
    Then I select Doc ID for release
    And I click Submit Release
    And I click Modify Doc List
    And I add relese title "Automation APO Release Test"
    And I click Submit Release
    And I Finalize
    And I cancel APO Release
    And I Finalize
    And I confirm APO Release
    Then I should see "APO Release - Details" on the page

    