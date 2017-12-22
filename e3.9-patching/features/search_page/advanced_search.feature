Feature: Search through Advanced search method

  Scenario: To search a document with a keyword
    Given I navigate to edis main page
    When I go to search_tab
    And I click on advanced_search
    And do full_text_keywords search steel
    And I select Import Injury as investigation types
  #    And I select Cancelled for investigation status
    And I select Yes as apo release
  #    And I select Select from list for document type
    And click search_button
    And I open the document
    And I navigate to next page
    Then I should see "731-1306" on the page


  Scenario: To search a document with Document ID
    Given I navigate to edis main page
    When I go to search_tab
    And I click on advanced_search
    When I search for 500059 document id
    And click search_button
    Then I should see "Displaying 1 - 1 of 1 Documents" on the page