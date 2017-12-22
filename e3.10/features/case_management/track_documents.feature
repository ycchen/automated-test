Feature: Track documents

  Scenario: 3747 Docket desk drop down menu contains accept documents and track documents
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to track documents

  Scenario: 3750 Navigate to track documents
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to track documents
    And I select tracking location as "Received by Scanning"
    And I enter track document id "514956"
    And I submit document
    And page should have text "Document 514956 Received by Scanning"

  Scenario Outline: 3750 validate by selecting different tracking location
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to track documents
    And I select tracking location as "<tracking location>"
    And I enter track document id "514956"
    And I submit document
    Then I should see "<string>" on the page
  Examples:
    |tracking location| string |
    |Intake Processed | Document 514956 Intake Processed |
    |Received by Scanning| Document 514956 Received by Scanning |
    |To Be Verified      | Document 514956 To Be Verified       |
    |Verified/To Be Filed| Document 514956 Verified/To Be Filed |
    |Filed               | Document 514956 Filed                |
    |Destroyed           | Document 514956 Destroyed            |

  Scenario: Exception messages should be displayed when submitted without selecting Track Location and Document Id
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to track documents
    And I submit document
    And page should have text "You must select a tracking location."
    And page should have text "You must enter a value for Document Id."

  Scenario: Navigate to track documents and enter non numeric value for document id
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to track documents
    And I select tracking location as "Received by Scanning"
    And I enter track document id "abc"
    And I submit document
    And page should have text "Document Id must be a numeric value."

  Scenario: Reset selected options
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to track documents
    And I select tracking location as "Received by Scanning"
    And I enter track document id "514956"
    And I reset options selected