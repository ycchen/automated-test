Feature: Internal User Document Submission

  Scenario: Internal User Happy Path Document Submission
    Given I navigate to edis page
    And I go to submission tab
    Then I should see "Who is filing this document?" on the page
    And I click Save and Continue
    Then I should see "Investigation Type" on the page
    And I select "Import Injury" as investigation type for filing
    And I click Save and Continue
    Then I should see "New Request" on the page
    And I click No
    And I click Save and Continue
    And I click 2nd page
    And I click next page
    Then I click the first investigation
    And I click Save and Continue
    And I select "Correspondence" as document type for filing
    And I click Save and Continue
    And I click No on Security Level card
    And I click No on second question
    And I click Yes on second question
    And I click Yes on Security Level card
    And then I select "Privileged" as security level
    And I click Save and Continue
    Then I should see "Privileged" on the page
    Then I should see "Document Title" on the page
    And I enter Document Title as "Test Document"
    And I click Save and Continue
    And I enter On Behalf Of as "Test User"
    And I click Save and Continue
    And I add file "Test.pdf"
    And I enter attachment title of first document as "Test Title"
    And I add file "Test1.pdf"
    And I enter attachment title of second document as "Second Test Title"
    And I reorder attachments
    And I delete one attachment
    And I click Save and Continue
    Then I should see "Document Information" on the page
    And I select Yes for party has been served
    And I select No for OSE alert
    And I select Yes for OSE alert
    And I click Save and Continue
    Then I should see "Confirmation" on the page
   # And I take screenshot
    And I click Submit
    And I confirm submission
    Then I should see "Notice of Receipt" on the page
    And I file another document
    Then I should see "Document Type" on the page


  Scenario: Internal User Streamline Submission
    Given I navigate to edis page
    And I go to submission tab
    Then I should see "Who is filing this document?" on the page
    And I click Save and Continue
    Then I should see "Investigation Type" on the page
    Then I click Enter Investigation
    And I enter "MISC-006" as Investigation Number
    And I choose "Final" as Investigation Phase
    And I click Save and Continue
    Then I should see "Document Type" on the page
    And I select "Correspondence" as document type for filing
    And I click Save and Continue
    And I click Yes on Security Level card
    And I click Save and Continue
    Then I should see "Confidential" on the page
    Then I should see "Document Title" on the page
    And I enter Document Title as "Test Document"
    And I click Save and Continue
    And I enter On Behalf Of as "Test User"
    And I click Save and Continue
    And I add file "Test.pdf"
    And I enter attachment title of first document as "Test Title"
    And I add file "Test1.pdf"
    And I enter attachment title of second document as "Second Test Title"
    And I reorder attachments
    And I delete one attachment
    And I click Save and Continue
    Then I should see "Document Information" on the page
    And I select Yes for party has been served
    And I select No for OSE alert
    And I select Yes for OSE alert
    And I click Save and Continue
    Then I should see "Confirmation" on the page
   # And I take screenshot
    And I click Submit
    And I confirm submission
    Then I should see "Notice of Receipt" on the page
    And I file another document
    Then I should see "Document Type" on the page



