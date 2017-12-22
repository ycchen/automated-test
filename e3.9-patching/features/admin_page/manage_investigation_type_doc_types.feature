Feature: Manage Investigation Type-Document Types

  Scenario: To manage investigation type
    Given I navigate to edis main page
    And I go to admin tab
    And I go to maintain investigation type
    And I select admin page investigation type as "Industry and Economic Analysis"
    And I load doc types
    And I select admin page document type as "Action Jacket"
    And I load metadata
    And I adjust external copies as "5"
    ###########################################
    #You can change the number of copies and then manually go in to make sure this has changed
    ###########################################
    And I save manage investigation type
    Then I should see "Industry and Economic Analysis - Action Jacket updated." on the page