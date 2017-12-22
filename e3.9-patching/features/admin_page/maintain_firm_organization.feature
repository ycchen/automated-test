Feature: Maintain Firm and Organizations

   Scenario: To administer maintain firm and organizations
    Given I navigate to edis main page
    And I go to admin tab
    And I go to maintain firm organizations
    And I create firm organization
    And I enter firm name
    And I enter firm address as "500 E Street"
    And I enter firm city as "SW"
    And I enter firm zip as "20436"
    And I enter firm state as "DC"
    And I enter firm country as "United States"
    And I enter firm contact email as "rachana.bukka@usitc.gov"
    And I enter firm telephone number as "202-205-3409"
    And I save firm
    Then I should see "successfully added." on the page

   Scenario: To administer maintain firm and organizations
    Given I navigate to edis main page
    And I go to admin tab
    And I go to maintain firm organizations
    And I create firm organization
    And I enter firm name as "Autotest15"
    And I enter firm address as "500 E Street"
    And I enter firm city as "SW"
    And I enter firm zip as "20436"
    And I enter firm state as "DC"
    And I enter firm country as "United States"
    And I enter firm contact email as "rachana.bukka@usitc.gov"
    And I enter firm telephone number as "202-205-3409"
    And I save firm
    Then I should see "Firm Autotest15/ already exists and could not be added" on the page
