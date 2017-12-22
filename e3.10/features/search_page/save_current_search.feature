Feature: Save searches

    Scenario: 3630 Save searched results with keywords and investigation data
    Given I navigate to edis main page
    And I go to search tab
    And I navigate to advanced search under search
    And I maximize the page
    And I search for "steel"
    And I expand investigation data
    And I enter investigation data number as "MISC-006"
    And I select advanced search phase as "Final"
    And click on side to loose focus on previous element in advanced search page
    And I select advanced search investigation type as "Byrd Amendment"
    And click on side to loose focus on previous element in advanced search page
    And I select advanced search status as "Active"
    And I select advanced search title as "Byrd Amendment"
    And I save current search
    And I enter saved search name as "InvData1"
    Then I click ok to save search name


    Scenario: I navigate to one of the saved search
      Given I navigate to edis main page
      And I go to search tab
      And I navigate to advanced search under search
      And I navigate to InvData1 saved search
      And page should have text "steel"
      And page should have text "MISC-006"
      And page should have text "Byrd Amendment"
      And I should see "305799" on the page
      And I should see "514956" on the page



#  Scenario: save current search
#    Given I navigate to edis main page
#    And I go to search tab
#    And I navigate to advanced search under search
#    And I search for "gold"
##    And I search for that keyword
#    And I expand investigation data
#    And I enter investigation data number as "701-444"
#    And I select advanced search phase as "Final"
#    And click on side to loose focus on previous element in advanced search page
#    And I select advanced search investigation type as "Import Injury"
#    And click on side to loose focus on previous element in advanced search page
#    And I select advanced search title as "Coated Free "
#    And I save current search
#    And I enter saved search name as "Gold_InvData1"
#    Then I click ok to save search name