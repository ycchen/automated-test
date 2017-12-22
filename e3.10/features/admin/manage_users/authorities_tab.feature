Feature: 3501, 37821 Authority tab

  Scenario:validate selection of user authorities and groups
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to authorities tab
    And I select authorities as "Admin - Manage Notices"
    And I add authority
    And I select groups as "AED"
    And I add group
    And I save
    Then I should see "User Information Updated" on the page

  Scenario:validate to unselect user authorities and groups
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to authorities tab
    And I deselect authorities as "Admin - Manage Notices"
    And I remove authority
    And I deselect groups as "AED"
    And I remove group
    And I save
    Then I should see "User Information Updated" on the page

   Scenario:validate multi selection of user authorities and groups
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to authorities tab
    And I multi select authorities as "Admin - Firm Org" and "Dockets Desk" and "Filing - e-Filing"
    And I add authority
    And I select groups as "AED" and "ALJ" and "TATA"
    And I add group
    And I save
     Then I should see "User Information Updated" on the page

  Scenario:validate deselecting of multi selection of user authorities and groups
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to authorities tab
    And I deselect multi authorities "Admin - Firm Org" and "Dockets Desk" and "Filing - e-Filing"
    And I remove authority
    And I deselect multi groups "AED" and "ALJ" and "TATA"
    And I remove group
    And I save
    Then I should see "User Information Updated" on the page

  Scenario: Reset user authorities and groups
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to authorities tab
    And I multi select authorities as "Admin - Firm Org" and "Dockets Desk" and "Filing - e-Filing"
    And I add authority
    And I select groups as "AED" and "ALJ" and "TATA"
    And I add group
    And I reset user details

  Scenario: Cancel user authorities and groups values selected
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to authorities tab
    And I multi select authorities as "Admin - Firm Org" and "Dockets Desk" and "Filing - e-Filing"
    And I add authority
    And I select groups as "AED" and "ALJ" and "TATA"
    And I add group
    And I cancel user details

  Scenario: 3782 There should be validation to prevent the logged in user from self assigning authorities and groups
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as bcaesar
    And I find user
    When I click on first search result link
    And I navigate to authorities tab
    And page should have text "User Account information cannot be modified by the owner of the account"