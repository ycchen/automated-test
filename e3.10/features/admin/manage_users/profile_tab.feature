Feature: 3498,3500, 3782 Profile page when searched for an user

  Scenario: save profile page information
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I enter profile user name as "Joel123"
    And I enter profile middle name as "M"
    And I enter profile last name as "Cava"
    And I select profile firm_organisation as "21st Century Business Herald"
    And I select profile office_division as "Office of Administration"
    And I enter address1 as "1875 Pennsylvania Avenue, NW"
    And I enter address2 as "address"
    And I enter city as "Washington"
    And I select state as "DC"
    And I enter zipcode as "20006"
    And I select country as "United States"
    And I enter phone number "202-663-6000abc"
    And I enter fax number "202-663-6383abc"
    And I enter email id "CIOAPPSTEST@usitc.gov"
    And I save

  Scenario: change to correct profile information
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I enter profile user name as "Joel"
    And I enter profile middle name as ""
    And I enter profile last name as "Moeller"
    And I select profile firm_organisation as "USITC"
    And I select profile office_division as "Office of Information Technology Services"
    And I enter address1 as "500 E Street, SW"
    And I enter address2 as ""
    And I enter city as "Washington"
    And I select state as "DC"
    And I enter zipcode as "20436"
    And I select country as "United States"
    And I enter phone number "202-205-0000"
    And I enter fax number ""
    And I enter email id "joel.moeller@usitc.gov"
    And I save

#  Scenario: make sure profile page contains that information
#    Given I navigate to edis main page
#    And I navigate to admin page
#    And I go to manage users
#    And I search user id as Joel
#    And I find user
#    When I click on first search results link
#    And user name as "Joel"
#    And last name as "Moeller"
#    And firm_organisation as "USITC"
#    And office_division as "Office of Administration"
#    And address1 as "Office of Information Technology Services"
#    And city as "Washington"
#    And state as "DC"
#    And zipcode as "20436"
#    And country as "United States"
#    And phone number as "202-205-6000"
#    And fax number as ""
#    And email id as "joel.moeller@usitc.gov"

  Scenario: reset profile page information
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I enter profile user name as "Joel123"
    And I enter profile middle name as "M"
    And I enter profile last name as "Cava"
    And I select profile firm_organisation as "21st Century Business Herald"
    And I select profile office_division as "Office of Administration"
    And I enter address1 as "1875 Pennsylvania Avenue, NW"
    And I enter address2 as "address"
    And I enter city as "Washington"
    And I select state as "DC"
    And I enter zipcode as "20006"
    And I select country as "United States"
    And I enter phone number "202-663-6000abc"
    And I enter fax number "202-663-6383abc"
    And I enter email id "CIOAPPSTEST@usitc.gov"
    And I reset

  Scenario: Cancel profile page information
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I enter profile user name as "Joel123"
    And I enter profile middle name as "M"
    And I enter profile last name as "Cava"
    And I select profile firm_organisation as "21st Century Business Herald"
    And I select profile office_division as "Office of Administration"
    And I enter address1 as "1875 Pennsylvania Avenue, NW"
    And I enter address2 as "address"
    And I enter city as "Washington"
    And I select state as "DC"
    And I enter zipcode as "20006"
    And I select country as "United States"
    And I enter phone number "202-663-6000abc"
    And I enter fax number "202-663-6383abc"
    And I enter email id "CIOAPPSTEST@usitc.gov"
    And I cancel user details

    Scenario: 3782 There should be validation to prevent the logged in user from changing info
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as bcaesar
    And I find user
    When I click on first search result link
    And page should have text "User Account information cannot be modified by the owner of the account"