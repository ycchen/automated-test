Feature: External User Document Submission

  Scenario: External User Happy Path Document Submission
    Given I navigate to edis page for external
    And I go to submission tab
    Then I should see "Who is filing this document?" on the page
    And I click Save and Continue
    Then I should see "Investigation Type" on the page
    And I select "Import Injury" as investigation type for filing
    And I click Save and Continue for next card
    Then I should see "New Request" on the page
    And I click No
    And I click Save and Continue for next card
    Then I click the first investigation
    And I click Save and Continue for next card
    And I select "Correspondence" as document type for filing
    And I click Save and Continue for next card
    And I click No on Security Level card
    And I click No on second question
    And I click Yes on second question
    And I click Yes on Security Level card
    And I click Save and Continue for next card
    Then I should see "Confidential" on the page
    Then I should see "Document Title" on the page
    And I enter Document Title as "Test Document"
    And I click Save and Continue for next card
    And I enter On Behalf Of as "Test User"
    And I click Save and Continue for next card
    And I add file "Test.pdf"
    And I enter attachment title of first document as "Test Title"
    And I add file "Test1.pdf"
    And I enter attachment title of second document as "Second Test Title"
    And I reorder attachments
    And I delete one attachment
    And I click Save and Continue on attach files card
    Then I should see "Document Information" on the page
    And I select Yes for party has been served
    And I click Save and Continue on attach files card
    Then I should see "Paper Copies Required" on the page
    Then I click the Security Level card    
    And I click No on Security Level card
    And I click Yes on second question
    And I click Save and Continue
    And I click the Document Information Card
    And I click Save and Continue on attach files card
    Then I should see "2" on the page
    And I acknowledge paper copies required
    And I click Save and Continue on attach files card
    Then I should see "Confirmation" on the page
   # And I click Submit
   # And I confirm submission
   # Then I should see "Notice of Receipt" on the page

  Scenario: External User Happy Path Document Submission for new Investigation w/ error checking
    Given I navigate to edis page for external
    And I go to submission tab
    Then I should see "Who is filing this document?" on the page
    And I click Save and Continue
    Then I should see "Investigation Type" on the page
    And I click Save and Continue for next card
    Then I should see "Required" on the page
    And I select "Import Injury" as investigation type for filing
    And I click Save and Continue for next card
    Then I should see "New Request" on the page
    And I click Save and Continue for next card
    Then I should see "Choose One" on the page
    And I click Yes
    And I click Save and Continue for next card
    And I click Save and Continue for next card
    Then I should see "Required" on the page
    And I click Yes on Petition Acknowledgement
    And I click Save and Continue for next card
    Then I should see "Security Level" on the page
    And I click Save and Continue for next card
    Then I should see "Choose One" on the page
    And I select Yes for document containing CBI/BPI
    Then I should see "Confidential" on the page
    And I click Save and Continue for next card
    Then I should see "Document Title" on the page
    And I click Save and Continue for next card
    Then I should see "Required" on the page
    And I enter Document Title as "Test Document"
    And I click Save and Continue for next card
    And I click Save and Continue for next card
    Then I should see "Required" on the page
    And I enter On Behalf Of as "Test User"
    And I click Save and Continue for next card
    And I click Save and Continue on attach files card
    And I should see "You must either upload at least one attachment or request a waiver" on the page
    And I add file "Test.pdf"
    And I enter attachment title of first document as "Test Title"
    And I add file "Test1.pdf"
    And I enter attachment title of second document as "Test Title #2"
    And I reorder attachments
    And I click Save and Continue on attach files card
    And I click Save and Continue on attach files card
    And I acknowledge paper copies required
    And I click Save and Continue on attach files card
    Then I should see "Confirmation" on the page
    Then I should see "Document Filing Information" on the page
   # And I click Submit
   # And I confirm submission
   # Then I should see "Notice of Receipt" on the page

