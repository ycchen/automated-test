Feature: Generate APO Release

  Scenario: Create APO release document when investigation doesn't have APO documents already available
    Given I navigate to edis page
    And I go to submission tab
    Then I should see "Who is filing this document?" on the page
    And I click Save and Continue
    Then I should see "Investigation Type" on the page
    And I select "Import Injury" as investigation type for filing
    And I click Save and Continue for next card
    Then I should see "New Request" on the page
    And I click No
    And I select  "Prelim"
    And I click Save and Continue for next card
    Then I click the first investigation
    And I click Save and Continue for next card
    And I select "Brief - Final Comments" as document type for filing
    And I click Save and Continue for next card
    And I click Yes on Security Level card
    And I click Save and Continue for next card
    Then I should see "Document Title" on the page
    And I enter Document Title as "Test Document"
    And I click Save and Continue for next card
    And I enter On Behalf Of as "Test User"
    And I click Save and Continue for next card
    And I add file "Test.pdf"
    And I enter attachment title of first document as "Test Title"
    And I click Save and Continue on attach files card
    Then I should see "Document Information" on the page
    And I click Save and Continue on attach files card
    Then I should see "Confirmation" on the page
    # And I take screenshot
    And I click Submit
    And I confirm submission
    And I grab Document number from html
   # Then I should see "Notice of Receipt" on the page