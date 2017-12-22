Feature:APO Release

  Scenario:Create APO release document when investigation doesn't have APO documents already available, modify and Release Media-Go to document editor,select APO release and save and Return to Release Info
    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file Test.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information
#  SHD WORK ON THIS STEP
#    And I should see "" on the page
    And I go to inv_mgmt_tab
    And I navigate to generate apo release
    And I search for an investigation "731-707"
    And I select investigation phase for submission as "Lit"
    And I select "Import Injury" as investigation type for submission
    And I search investigations
    And I select one of the investigation
    Then I should see "APO Release - Investigation Summary" on the page
    And I create new release
    And I uncheck APO release
    And I uncheck security
    And I uncheck status
    And I filter apo release
    And I select document id to navigate to document editor page
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
#    And I select one of the Apo qualified document
#    And I submit release
#    And I modify doc list
#    And I enter random release title
#    And I submit release
#    And I should see "APO Release - Details" on the page
#    And I finalize
#    And I finalize apo release
##    And I should see processing status as "Validated" on the Apo release details page
##    And I should see Apo release as "Y" on the Apo release details page
#    And I should see "APO Release - Details" on the page

















#
#    Given I navigate to edis main page
#    Then I navigate to submission tab
#    And I submit and continue
#    And I select "Import Injury" as investigation type for submission
#    And I submit and continue
#    And I select investigation phase for submission as "Lit"
#    And I submit and continue
#    And I search for an investigation "731-707"
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
#    And I go to case management tab
#    And I navigate to apo release
#    And I select investigation type as "Import Injury"
#    And I enter investigation number as "731-707"
#    And I select phase as "Lit"
#    And I find investigation
#    And I click on first result
#    Then I should see "APO Document Release" on the page
#    And I create new release
#    And I uncheck APO release
#    And I uncheck security
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
#    And I select one of the Apo qualified document
#    And I submit release
#    And I modify doc list
#    And I enter random release title
#    And I submit release
#    And I should see "APO Release - Details" on the page
#    And I finalize
#    And I finalize apo release
##    And I should see processing status as "Validated" on the Apo release details page
##    And I should see Apo release as "Y" on the Apo release details page
#    And I should see "APO Release - Details" on the page