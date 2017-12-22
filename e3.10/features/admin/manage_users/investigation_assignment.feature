Feature: 3502,3503,3587,3780,3782,3783,3784,3785,3786 Investigation Assignment tab

  Scenario: Add investigation
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation status as "Active"
    And I select investigation phase as "Final"
    And I select investigation type as "Industry and Economic Analysis"
    And I enter investigation number as "103"
    And I enter investigation title as "Woven"
    And I find investigation
    And I click on first result
    Then I should see "103-013" on the page
    And I should see "JOEL" on the page
    And I select security level as "Administrative"
    And I submit security level
    And I save investigation assignment
    And I should see "User Information Updated" on the page
    And I should see "103" on the page


  Scenario Outline: Add investigations with different investigation types
    Given I navigate to edis main page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation status as "<inv_status>"
    And I select investigation phase as "<inv_phase>"
    And I select investigation type as "<inv_type>"
    And I enter investigation number as "<inv_no>"
    And I find investigation
    And I click on first test result
    Then I should see "<invNo>" on the page
    And I should see "<user>" on the page
    And I select security level as "<sec_level>"
    And I submit security level
    And I should see "<inv_no_on_user_details_page>" on the page

  Examples:
    | inv_status | inv_phase   | inv_type                          | inv_no   | invNo    | user | sec_level    | inv_no_on_user_details_page |
    | Active     | Final       | Byrd Amendment                    | MISC-006 | MISC-006 | JOEL | Privileged   | MISC-006                    |
#    | Inactive   | Review      | Import Injury                     | 104-013  | 104-013  | JOEL | Confidential | 104-013                     |
    | Inactive   | Violation   | Sec 337                           | 337-004  | 337-004  | JOEL | Limited      | 337-004                     |
#    | Inactive   | New Request | Tariff Affairs & Trade Agreements | NR-006   | NR-006   | JOEL | Public       | NR-006                      |



#    And I click on first result
#    And I save investigation phase
#   And I close
#    And I save investigation assignment
#  After saving come back and search for that user id and make sure inv no. i added earlier are saved

  Scenario: Remove added investigations
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I remove investigation
    And I save investigation assignment
    And I should see "User Information Updated" on the page

  Scenario: Add multiple investigations
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation status as "Active"
    And I find investigation
    And I click on first test result
    And I select security level as "Confidential"
    And I submit security level
    And I add investigation
    And I select investigation status as "Inactive"
    And I find investigation
    And I click on a test result
    And I select security level as "Limited"
    And I submit security level
    And I remove investigation
    And I remove investigation
    And I save investigation assignment
    And I should see "User Information Updated" on the page

  Scenario: 3780 Multi select and remove security level
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation status as "Active"
    And I find investigation
    And I click on first test result
    And I multi select security level investigation as "Confidential" and "Limited"
    And I submit security level
    And I remove investigation
    And I remove investigation
    And I save investigation assignment
    And I should see "User Information Updated" on the page

  Scenario: Reset security level selection
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation status as "Active"
    And I reset security level selection
    Then I should see "Search for Investigation" on the page

  Scenario: Cancel security level selection
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I find investigation
    And I click on first test result
    And I select security level as "Public"
    And I cancel security level selection
    Then I should see "Investigation Assignment" on the page

  Scenario: Reset investigation selection
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation status as "Active"
    And I find investigation
    And I click on first test result
    And I select security level as "Confidential"
    And I submit security level
    And I reset user details

  Scenario: Cancel investigation selection
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation status as "Active"
    And I find investigation
    And I click on first test result
    And I select security level as "Confidential"
    And I submit security level
    And I cancel user details
    #And page should have text "Enter User ID here"

  Scenario: 3782 There should be validation to prevent the logged in user from self assigning investigations
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as bcaesar
    And I find user
    When I click on first search result link
    And I navigate to investigation assignment
    And page should have text "User Account information cannot be modified by the owner of the account"

  Scenario: 3783 There should be validation when the user tries to save an investigation with no security level selected
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation status as "Active"
    And I find investigation
    And I click on first test result
    And I submit security level
    And page should have text "Please select Security Level"


  Scenario: 3784 There needs to be a validation displayed when all possible security levels have already been assigned for a given investigation/phase
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I find investigation
    And I click on first test result
    And I multi select security level investigation as "Administrative" and "Confidential" and "Limited" and "Privileged" and "Public"
    And I submit security level
    And I add investigation
    And I find investigation
    And I click on first test result
    Then I should see "There are no security levels available to authorize for this investigation." on the page

  Scenario: 3785 Able to select security level for same investigation number with different investigation phase
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation phase as "Review"
    And I enter investigation number as "104"
    And I find investigation
    And I click on first test result
    And I select security level as "Administrative"
    And I submit security level
    Then I should see investigation number as "104-007" and investigation phase as "Review" and security level as "Administrative"
    And I add investigation
    And I select investigation phase as "Review"
    And I enter investigation number as "104"
    And I find investigation
    And I click on first test result
    And I select security level as "Public"
    And I submit security level
    Then I should see investigation number as "104-007" and investigation phase as "Review" and security level as "Public"
    And I add investigation
    And I select investigation phase as "Final"
    And I enter investigation number as "104"
    And I find investigation
    And I click on first test result
    And I select security level as "Administrative"
    And I submit security level
    Then I should see investigation number as "104-007" and investigation phase as "Final" and security level as "Administrative"
    And I add investigation
    And I select investigation phase as "Final"
    And I enter investigation number as "104"
    And I find investigation
    And I click on first test result
    And I select security level as "Public"
    And I submit security level
    Then I should see investigation number as "104-007" and investigation phase as "Final" and security level as "Public"

#      Then I should see "Review" on the page
#      And I should see "Public" on the page

  Scenario: 3786 Pagination on Investigation assignment page
    Given I navigate to edis main page
    And I navigate to admin page
    And I go to manage users
    And I search user id as Joel
    And I find user
    When I click on first search results link
    And I navigate to investigation assignment
    And I add investigation
    And I select investigation phase as "Review"
    And I enter investigation number as "104"
    And I find investigation
    And I click on first test result
    And I multi select security level investigation as "Administrative" and "Confidential" and "Limited" and "Privileged" and "Public"
    And I submit security level
    And I add investigation
    And I select investigation phase as "Review2"
    And I enter investigation number as "104"
    And I find investigation
    And I click on first test result
    And I multi select security level investigation as "Administrative" and "Confidential" and "Limited" and "Privileged" and "Public"
    And I submit security level
    And I add investigation
    And I select investigation phase as "Final"
    And I enter investigation number as "104"
    And I find investigation
    And I click on first test result
    And I multi select security level investigation as "Administrative" and "Confidential" and "Limited" and "Privileged" and "Public"
    And I submit security level
    And I go to next page
    #Then I should see investigation number as "2104-005" and investigation phase as "Final" and security level as "Public"
   # Then I should see investigation number as "104-3076" and investigation phase as "Final" and security level as "Public"
    Then I should see "104-123" on the page
    Then I should see "Final" on the page
    Then I should see "Public" on the page