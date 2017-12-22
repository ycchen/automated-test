Feature: To Manage special processing types

  Scenario Outline: select special processing
    Given I navigate to edis main page
    And I go to admin tab
    And I go to manage special processing types
    And I select special processing as <special_processing>
    And I load special processing
    And I enter number of copies as "3"
     ###########################################
    #You can change the number of copies and then manually go in to make sure this has changed
    ###########################################
    And I save manage investigation type
    And I save special processing
    Then I should see "updated." on the page


  Examples:
    | special_processing    |
    | Before the ALJ        |
#    | Before the Commission |
#    | None                  |