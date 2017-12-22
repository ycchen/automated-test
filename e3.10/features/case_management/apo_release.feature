Feature: Generate APO Release

  Background:
    Given I navigate to edis main page


  Scenario:3794,3795,3796,3798 Find Investigation Phases for APO Release-Pagination, results per page, reprint existing release
    And I go to case management tab
    And I navigate to apo release
    And I select investigation type as "Import Injury"
    And I enter investigation number as "104"
    And I find investigation
#    And I select "25" entries to show
#    And I navigate to next page
    And I click on first result
    Then I should see "APO Document Release" on the page
    And I check one of the release date to reprint
    And I reprint a release
    Then I should see "APO Release - Details" on the page
    And I return to release info
    Then I should see "APO Document Release" on the page

  Scenario: 3798 select multiple existing release to reprint
    And I go to case management tab
    And I navigate to apo release
      And I select investigation type as "Import Injury"
      And I enter investigation number as "731-1071"
      And I find investigation
      And I click on first result
      Then I should see "APO Document Release" on the page
      And I check one of the release date to reprint
      And I check second release date
      And I check third release date
      And I reprint a release
      Then I should see "APO Release - Details" on the page

  Scenario: 3797,3799 Create APO release document when investigation doesn't have APO documents already available, modify and Release Media-Go to document editor,select APO release and save and Return to Release Info
    Then I navigate to submission tab
    And I submit and continue
    And I select "Import Injury" as investigation type for submission
    And I submit and continue
    And I select No
    And I select investigation phase for submission as "Lit"
    And I submit and continue
    And I search for an investigation "731-707"
    And I select one of the investigation
    And I submit and continue
    And I select "Brief - Final Comments" as document type for filing
    And I submit and continue
    And I select document security level as "Yes"
    And I select security level for filing as "Confidential"
    And I submit and continue
    And I enter title for document as "Testing submission for Import Injury"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    #And I enter text for added file as "Attached test files"
    And I submit and continue
    And I submit and continue
   # Then I should see "Confirmation" on the page
    And I click Submit on page
    And I confirm submission on page
    And I should see "Notice of Receipt" on the page
    And I go to case management tab
    And I navigate to apo release
    And I select investigation type as "Import Injury"
    And I enter investigation number as "731-707"
    And I select phase as "Lit"
    And I find investigation
    And I click on first result
    Then I should see "APO Document Release" on the page
    And I create new release
    And I uncheck APO release
    And I uncheck security
    And I uncheck status
    And I filter
    And I select document id to navigate to document editor page
    And I check APO release on document editor page
    And I enter document date
    And click on document status to enable
    And change the status to "Review"
    And I save and return
    And I check APO release
    And I filter
    And I select document id to navigate to document editor page
    And click on document status to enable
    And change the status to "Validated"
    And I save and return
    And I check APO release that shows up in list to select that document
    And I filter
    And I select one of the Apo qualified document
    And I submit release
    And I modify doc list
    And I enter random release title
    And I submit release
    And I should see "APO Release - Details" on the page
    And I finalize
    And I finalize apo release
#    And I should see processing status as "Validated" on the Apo release details page
#    And I should see Apo release as "Y" on the Apo release details page
    And I should see "APO Release - Details" on the page
    And I create releases media
    And I enter "2" copies
    And I submit release media
#  Create release media is not working not printing talk to jason

  Scenario: When an Apo release document is finalized and we try to submit one more apo release on same day without any release title then validation message shows up
    And I go to case management tab
    And I navigate to apo release
    And I select investigation type as "Import Injury"
    And I enter investigation number as "731-707"
    And I select phase as "Lit"
    And I find investigation
    And I click on first result
    Then I should see "APO Document Release" on the page
    And I create new release
    And I select one of the Apo qualified document
    And I submit release
    And I should see "Duplicate APO Release" on the page

  Scenario: 3799 Create and navigate to draft release
#    Then I navigate to submission tab
#    And I submit and continue
#    And I select "Import Injury" as investigation type for submission
#    And I submit and continue
#    And I select investigation phase for submission as "Final"
#    And I submit and continue
#    And I search for an investigation "201-065"
#    And I select one of the investigation
#    And I submit and continue
#    And I select "Brief - Final Comments" as document type for filing
#    And I submit and continue
#    And I select document security level as "Yes"
#    And I select security level for filing as "Confidential"
#    And I submit and continue
#    And I enter title for document as "Testing submission for Import Injury"
#    And I submit and continue
#    And I enter on behalf of "USITC autotest"
#    And I submit and continue
#    And I add file "Test.pdf"
#    And I enter text for added file as "Attached test files"
#    And I submit and continue
#    Then I should see "Submission Confirmation page" on the page
#    And I finish the submission
#    And I should see "Notice of Receipt" on the page
    And I go to case management tab
    And I navigate to apo release
    And I select investigation type as "Import Injury"
    And I enter investigation number as "201-065"
    And I select phase as "Final"
    And I find investigation
    And I click on first result
    Then I should see "APO Document Release" on the page
    And I create new release
#    And I uncheck APO release
#    And I uncheck status
#    And I filter
#    And I select document id to navigate to document editor page
#    And I check APO release on document editor page
#    And I enter document date
#    And click on document status to enable
#    And change the status to "Review"
#    And I save and return
#    And I check APO release
#    And I filter
#    And I select document id to navigate to document editor page
#    And click on document status to enable
#    And change the status to "Validated"
#    And I save and return
#    And I check APO release that shows up in list to select that document
#    And I filter
#    And I enter random release title
    And I select one of the Apo qualified document
    And I submit release
    And I should see "APO Release - Details" on the page
    And I return to release info
    Then I should see "Draft Releases" on the page

  Scenario: Delete draft release on apo document release page
    And I go to case management tab
    And I navigate to apo release
    And I select investigation type as "Import Injury"
    And I select phase as "Final"
    And I enter investigation number as "201-065"
    And I find investigation
    And I click on first result
    Then I should see "APO Document Release" on the page
    And I delete draft release
    Then I should see "Create New Release" on the page

  Scenario: 3819 Release date links under finalize releases should land on APO Release Details page
    And I go to case management tab
    And I navigate to apo release
    And I select investigation type as "Import Injury"
    And I enter investigation number as "701-184"
    And I find investigation
    And I click on first result
    Then I should see "APO Document Release" on the page
    And I click on release date link 
    And I should see "APO Release - Details" on the page

   Scenario: 3799 Create releases media for an APO qualified document
     And I go to case management tab
     And I navigate to apo release
      And I select investigation type as "Import Injury"
      And I enter investigation number as "701-402"
      And I find investigation
      And I click on first result
      Then I should see "APO Document Release" on the page
      And I check one of the release date to reprint
      And I reprint a release
      Then I should see "APO Release - Details" on the page
      And I create releases media
      And I enter "2" copies
      And I submit release media
#After submitting release media nothing happening??

  Scenario:3799 select multiple APO release documents
    And I go to case management tab
    And I navigate to apo release
    And I select investigation type as "Import Injury"
    And I enter investigation number as "701-402"
    And I select phase as "Final"
    And I find investigation
    And I click on first result
    Then I should see "APO Document Release" on the page
    And I create new release
    And I select one of the Apo qualified document
    And I select second Apo qualified document
    And I select third Apo qualified document
    And I submit release
    And I return to release info
    Then I should see "APO Document Release" on the page
    And I delete draft release
    Then I should see "Create New Release" on the page

    Scenario: Validation message should be displayed when document is not selected from document list on Apo release-Document selection
      And I go to case management tab
      And I navigate to apo release
      And I select investigation type as "Import Injury"
      And I enter investigation number as "201-065"
      And I select phase as "Final"
      And I find investigation
      And I click on first result
      Then I should see "APO Document Release" on the page
      And I create new release
      And I submit release
      And I should see "APO Release should contain at least one document" on the page

      Scenario: Validate cancel on document editor page
        And I go to case management tab
        And I navigate to apo release
        And I select investigation type as "Import Injury"
        And I enter investigation number as "104-007"
        And I select phase as "Review"
        And I find investigation
        And I click on first result
        Then I should see "APO Document Release" on the page
        And I create new release
        And I uncheck APO release
        And I uncheck security
        And I uncheck status
        And I filter
        And I select document id to navigate to document editor page
        And I check APO release on document editor page
        And I enter document date
        And click on document status to enable
        And I cancel
        And I should see "APO Release - Document Selection" on the page