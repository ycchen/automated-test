Feature: Manage Investigations

  Scenario: Navigate to manage investigations page to find an investigation
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I select investigation status as "Active"
    And I select investigation phase as "Final"
    And I select investigation type as "Import Injury"
    And I enter investigation number as "731"
    And I enter investigation title as "Certain"
    And I find investigation
    And I click on first result to manage investigation
    Then I should see "Investigation Info" on the page

  Scenario: validate going back to home page from results page
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I select investigation status as "Active"
    And I select investigation phase as "Final"
    And I select investigation type as "Import Injury"
    And I enter investigation number as "731"
    And I enter investigation title as "Certain"
    And I find investigation
    And I click on first result to manage investigation
    When I navigate to home page from results page
    Then should have "Home" on landing page

  Scenario: validate going back to find investigation page from results page
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I select investigation status as "Active"
    And I select investigation phase as "Final"
    And I select investigation type as "Import Injury"
    And I enter investigation number as "731"
    And I enter investigation title as "Certain"
    And I find investigation
    And I click on first result to manage investigation
    When I navigate to find investigating page from results page
    Then should have "Search for Investigation" on landing page
#  ---this above line dont have ID shd update with ID, Home page and find inv have same class name so going to home page


  Scenario: To save investigation info,additional metadata, assignments, disposition, audit tool
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I select investigation status as "Active"
    And I select investigation phase as "Final"
    And I select investigation type as "Import Injury"
    And I enter investigation number as "731"
    And I enter investigation title as "Certain"
    And I find investigation
    And I click on first result to manage investigation
#    Then investigation number should have "731-1063"
    And investigation phase should have "Final"
    And investigation type should have "Import Injury"
    And investigation status should have "Active"
    And investigation title should have "Certain Frozen or Canned Warmwater Shrimp and Prawns from Brazil, China, Ecuador, India"
    And official investigation number should have "731-TA-1063"
#    Waiting on ID's
    And I navigate to additional metadata
    And I enter document number as "12345"
    And I enter pre-institution inv number as "337"
    And I enter pre-institution phase as "Final"
    And I navigate to assignments
    And I enter primary case manager as "B rac"
    And I enter secondary case manager as "bu autotest11"
    And I navigate to disposition
    And I enter tentative termination date as "02/01/2005"
    And I enter litigation hold date as "04/29/2016"
    And I enter notes as "automation"
    And I navigate to audit tool
    Then I should see "EDIS INVESTIGATION UPDATED" on the page
    And I save investigation
    And I should see "EDIS INVESTIGATION UPDATED" on the page






