Feature: quick links footer links

  Scenario: advanced search link
    Given I navigate to edis main page
    And I navigate to advanced search link
    Then I should see "EDIS Internal Advanced Search" on the page

  Scenario: e-file documents link
    Given I navigate to edis main page
    And I navigate to efile documents link
    Then I should see "EDIS Electronic Document Submission" on the page