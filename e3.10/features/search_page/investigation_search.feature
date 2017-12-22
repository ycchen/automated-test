Feature: 3403Epic,3605 Create Find Investigation Management Page

  Scenario Outline: To search an Investigation
    Given I navigate to edis main page
    And I go to search tab
    And I navigate to investigation search
    And I enter number "<inv_number>"
    And I select investigation search phase as "<inv_phase>"
    And click on side to loose focus on previous element
    And I select investigation search type as "<inv_type>"
    And click on side to loose focus on previous element
    And I select investigation search status as "<inv_status>"
    And click on side to loose focus on previous element
    And I enter investigation search title as "<inv_title>"
    And I search investigation
    And I should see "<verify_text_exists>" on the page
  Examples:
    | inv_number | inv_phase | inv_type                       | inv_status | inv_title |verify_text_exists|
    | 337        | Advisory  | Sec 337                        | Active     | Certain   | Certain Lens-Fitted Film Packages, Inv.No.337-TA-406|
   # | 103        | Final     | Industry and Economic Analysis | Active     | Certain   | Portable Economic Effect of the Modifications to DR-CAFTA|

  Scenario Outline: To reset searched Investigation
    Given I navigate to edis main page
    And I go to search tab
    And I navigate to investigation search
    And I enter number "<inv_number>"
    And I select investigation search phase as "<inv_phase>"
    And click on side to loose focus on previous element
    And I select investigation search type as "<inv_type>"
    And click on side to loose focus on previous element
    And I select investigation search status as "<inv_status>"
    And I enter investigation search title as "<inv_title>"
    And I reset investigation
    And I should see "<verify_text_exists>" on the page
  Examples:
    | inv_number | inv_phase | inv_type                       | inv_status | inv_title |verify_text_exists|
    | 103        | Final     | Industry and Economic Analysis | Active     | Certain   |Portable Economic Effect of the Modifications to DR-CAFTA|


  Scenario: To search an Investigation with multi selection
    Given I navigate to edis main page
    And I go to search tab
    And I navigate to investigation search
    And I enter number "103"
    And I select multi selection phase as "Remand" and "Final"
    And click on side to loose focus on previous element
    And I select multi search type as "Import Injury" and "Industry and Economic Analysis"
    And click on side to loose focus on previous element
    And I select investigation search status as "Active "
    And I enter investigation search title as "Certain"
    And I search investigation
    And I should see "Portable Economic Effect of the Modifications to DR-CAFTA" on the page
