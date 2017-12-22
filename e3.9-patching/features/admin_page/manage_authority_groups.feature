Feature: Manage authority groups

  Scenario: To manage authority groups by load group
    Given I navigate to edis main page
    And I go to admin tab
    And I go to manage authority groups
    And I select "Dockets Admin" as authority group
    And I load group
    And I save group
    Then I should see "The save on authority group was successful!" on the page


   Scenario: To manage authority groups by creating group WITHOUT making selection
     Given I navigate to edis main page
     And I go to admin tab
     And I go to manage authority groups
     And I enter new group name
     And I create group
     And I save group
     Then I should see "The save on authority group was successful!" on the page


  Scenario: To manage authority groups by creating group WITH making selection
    Given I navigate to edis main page
    And I go to admin tab
    And I go to manage authority groups
    And I enter new group name
    And I create group
    And I multi select investigation phase as "Admin - Authority Groups" and "Admin - Firm Org" and "EDIS Anonymous User Role"
    And I add selected Authorities
    And I remove one of the Authorities by deselecting "Admin - Authority Groups" and "Admin - Firm Org"
    And I click deselect
    And I save group
    Then I should see "The save on authority group was successful!" on the page


