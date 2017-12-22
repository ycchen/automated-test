Feature: Create new investigation in Invmgmt tab

  Scenario: create new investigation for investigation status as pre-institution inv
    Given I navigate to edis main page
    And I go to inv_mgmt_tab
    And I navigate to create new investigation page
    And I select new investigation type as "Import Injury"
    And I select investigation category as 731
    And I select investigation status as pre institution investigation
    And I get next docket number
    And I select new investigation phase as "Advisory"
    And investigation title is "autotest"
    And I save the investigation
    Then I should see "Investigation Information" on the page


  Scenario: create new investigation for investigation status as permanent inv
    Given I navigate to edis main page
    And I go to inv_mgmt_tab
    And I navigate to create new investigation page
    And I select new investigation type as "Import Injury"
    And I select investigation category as 751
    And I select investigation status as Permanent Investigation
    And I enter investigation number
    And I select investigation category as 731
    And I select new investigation phase as "Lit"
#  ---Its not able to select from drop down?? As its not selected tile is not enabled
    And investigation title is Bennie4
    And I save the investigation
    Then I should see "Investigation Information" on the page



