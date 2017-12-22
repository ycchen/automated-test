 Feature: 3461-Help Page-Whats New Page

  Scenario: To launch whats new page
    Given I navigate to edis main page
    And I go to help tab
    Then I select whats new
    And I should see "What's New" on the page
