Feature: To manage notices

  #Run test to add a notice and take that ID to run deletion script

  Scenario: Add a notice that doesn't exists
    Given I navigate to edis main page
    And I go to admin tab
    And I go to manage notice
    And I select key as "edis3Admin:Home"
    And I select request source as "INTERNAL_REQUEST"
    And I enter text as "Test"
    And I add notice
    #Then I should see "saved" on the page


  Scenario: Add a notice that already exists
    Given I navigate to edis main page
    And I go to admin tab
    And I go to manage notice
    And I select key as "edis3Admin:Home"
    And I select request source as "INTERNAL_REQUEST"
    And I enter text as "Test"
    And I add notice
    Then I should see "A notice for that key and request source already exists" on the page


    Scenario: Delete a added notice
      Given I navigate to edis main page
      And I go to admin tab
      And I go to manage notice
      #And I go to next page
      And I delete an action
      Then I should see "was deleted." on the page


