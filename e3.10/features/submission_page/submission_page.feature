Feature: 3840,3476,3484,3482,3486 Submission Page

  Scenario Outline: 3480,3484 Submit document by selecting document security level as Yes
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I should see "rac B" on the page
    And I select "<inv_type>" as investigation type for submission
    And I submit and continue
    And I should see "<inv_type>" on the page
    And I search for an investigation "<inv_no>"
    And I select one of the investigation
    And I submit and continue
    And I should see "<inv_no>" on the page
    And I select "<doc_type>" as document type for filing
    And I submit and continue
#    And I should see "<doc_type>" on the page
    And I select document security level as "Yes"
    And I submit and continue
    And I enter title for document as "<title>"
    And I submit and continue
    And I should see "<title>" on the page
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page

  Examples:
    | inv_type                          | inv_no   | doc_type               | title                                                    |
    | Byrd Amendment                    | 103      | Correspondence - USITC | Testing submission for Byrd Amendment                    |
#    | Industry and Economic Analysis    | 131-03  | Petition               | Testing submission for Industry and Economic Analysis    |
#    | Rule Making                       | MISC-0 | Records Management     | Testing submission for Rule Making                       |
#    | Tariff Affairs & Trade Agreements | 1205-00 | Action Request         | Testing submission for Tariff Affairs & Trade Agreements |

  Scenario Outline: 3484 Submit document by selecting inv type as import injury, sec 337 and document security level as yes
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "<inv_type>" as investigation type for submission
    And I submit and continue
    And I select investigation phase for submission as "<inv_phase>"
    And I submit and continue
    And I search for an investigation "<inv_no>"
    And I select one of the investigation
    And I submit and continue
    And I select "<doc_type>" as document type for filing
    And I submit and continue
    And I select document security level as "Yes"
    And I submit and continue
    And I enter title for document as "<title>"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page
  Examples:
    | inv_type      | inv_phase | inv_no  | doc_type     | title                                |
    | Import Injury | Final     | 701-4 | Staff Report | Testing submission for Import Injury |
    | Sec 337       | Advisory     | 337-5   | Transcript   | Testing submission for Sec 337       |


  Scenario Outline: Submit document by selecting document security level as No
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "<inv_type>" as investigation type for submission
    And I submit and continue
    And I search for an investigation "<inv_no>"
    And I select one of the investigation
    And I submit and continue
    And I select "<doc_type>" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "Yes"
    And I submit and continue
    And I enter title for document as "<title>"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page
#    AFTER A SUBMISSION IS FINISHED IT SHOULD DISPLAY DETAILS CURRENTLY NOT DISPLAYING ANYTHING TALK TO JASON
#    Failed when selected Industry and Economic Analysis Coz there is no data for Industry and Economic Analysis

  Examples:
    | inv_type       | inv_no | doc_type               | title                                 |
    | Byrd Amendment | 103    | Correspondence - USITC | Testing submission for Byrd Amendment |
#   | Industry and Economic Analysis | 131-025    | Petition               | Testing submission for Industry and Economic Analysis |
#    | Rule Making                    | MISC-004   | Records Management     | Testing submission for Rule Making                    |
#  |Tariff Affairs & Trade Agreements|

  Scenario Outline: Submit document by selecting inv type as import injury, sec 337 and document security level as No
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "<inv_type>" as investigation type for submission
    And I submit and continue
    And I select investigation phase for submission as "<inv_phase>"
    And I submit and continue
    And I search for an investigation "<inv_no>"
    And I select one of the investigation
    And I submit and continue
    And I select "<doc_type>" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "Yes"
    And I submit and continue
    And I enter title for document as "<title>"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page
#    And I select document public version as "Yes"
#    And I submit and continue
  Examples:
    | inv_type | inv_phase | inv_no  | doc_type   | title                          |
#    | Import Injury | Final     | 104-3076    | Staff Report | Testing submission for Import Injury |
    | Sec 337  | Advisory2 | 337-406 | Transcript | Testing submission for Sec 337 |

#  TALK TO JASON No matter what I select "Yes" or "No" as Public Version its taking to Document type selection page is this right??

  Scenario Outline: Submit document by selecting inv type as import injury, sec 337 and document security level as No
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "<inv_type>" as investigation type for submission
    And I submit and continue
    And I select investigation phase for submission as "<inv_phase>"
    And I submit and continue
    And I search for an investigation "<inv_no>"
    And I select one of the investigation
    And I submit and continue
    And I select "<doc_type>" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "Yes"
    And I submit and continue
    And I enter title for document as "<title>"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page
#    And I select document public version as "Yes"
#    And I submit and continue
  Examples:
    | inv_type      | inv_phase | inv_no  | doc_type     | title                                |
    | Import Injury | Final     | 701-442 | Staff Report | Testing submission for Import Injury |
##    | Sec 337       | Recon     | 337-395    | Transcript   | Testing submission for Sec 337       |


  Scenario Outline: Submit document by selecting document security level as No and public version as No
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "<inv_type>" as investigation type for submission
    And I submit and continue
    And I search for an investigation "<inv_no>"
    And I select one of the investigation
    And I submit and continue
    And I select "<doc_type>" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "No"
    And I submit and continue
    And I enter title for document as "<title>"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page
#    AFTER A SUBMISSION IS FINISHED IT SHOULD DISPLAY DETAILS CURRENTLY NOT DISPLAYING ANYTHING TALK TO JASON

  Examples:
    | inv_type    | inv_no   | doc_type           | title                              |
#    | Byrd Amendment                 | 103    | Correspondence - USITC | Testing submission for Byrd Amendment                 |
#    | Industry and Economic Analysis | 131-025    | Petition               | Testing submission for Industry and Economic Analysis |
    | Rule Making | MISC-013 | Records Management | Testing submission for Rule Making |
#    |Tariff Affairs & Trade Agreements|

  Scenario Outline: Submit document by selecting inv type as import injury, sec 337 and document security level as No and public version as No
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "<inv_type>" as investigation type for submission
    And I submit and continue
    And I select investigation phase for submission as "<inv_phase>"
    And I submit and continue
    And I search for an investigation "<inv_no>"
    And I select one of the investigation
    And I submit and continue
    And I select "<doc_type>" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "No"
    And I submit and continue
    And I enter title for document as "<title>"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page
#    And I select document public version as "Yes"
#    And I submit and continue
  Examples:
    | inv_type      | inv_phase | inv_no  | doc_type     | title                                |
    | Import Injury | Final     | 701-444 | Staff Report | Testing submission for Import Injury |
#    | Sec 337       | Recon     | 337-395    | Transcript   | Testing submission for Sec 337       |


  Scenario: 3476 Basic navigation flow for submission
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Byrd Amendment" as investigation type for submission
    And I submit and continue
    And I search for an investigation "103"
    And I select one of the investigation
    And I submit and continue
    And I select "Correspondence" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "No"
    And I submit and continue
    And I enter title for document as "Testing submission for Byrd Amendment"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attach Test file"
    And I submit and continue
#    And I navigate to document type
#    And I should see "Action Jacket" on the page
#    And I navigate to investigation
#    And I should see "103" on the page
#    And I navigate to investigation type
#    And I should see "Byrd Amendment" on the page

  Scenario Outline: Submit document by selecting document with different security level types
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I should see "rac B" on the page
    And I select "Byrd Amendment" as investigation type for submission
    And I submit and continue
    And I should see "Byrd Amendment" on the page
    And I search for an investigation "103"
    And I select one of the investigation
    And I submit and continue
    And I should see "103" on the page
    And I select "Correspondence - USITC" as document type for filing
    And I submit and continue
    And I should see "Correspondence - USITC" on the page
    And I select document security level as "Yes"
    And I select security level for submission as "<security_level>"
    And I submit and continue
    And I enter title for document as "Testing submission for Byrd Amendment"
    And I submit and continue
    And I should see "Testing submission for Byrd Amendment" on the page
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page

  Examples:
    | security_level |
    | Limited        |
    | Administrative |
    | Privileged     |

  Scenario: 3482,3486 Attach multiple files
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Byrd Amendment" as investigation type for submission
    And I submit and continue
    And I search for an investigation "103"
    And I select one of the investigation
    And I submit and continue
    And I select "Correspondence" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "No"
    And I submit and continue
    And I enter title for document as "Testing submission for Byrd Amendment"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attach Test1 file"
    And I add file "Test1.pdf"
    And I enter text for second attachment as "Attach Test2 file"
    And I add file "Chapter 17 (3).pdf"
    And I enter text for third attachment as "Attach Test3 file"
    And I add file "chapter_52 (1).pdf"
    And I enter text for fourth attachment as "Attach Test4 file"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
#And text entered for an attachment are not saved

  Scenario: Remove attached file
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Byrd Amendment" as investigation type for submission
    And I submit and continue
    And I search for an investigation "103"
    And I select one of the investigation
    And I submit and continue
    And I select "Correspondence" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "No"
    And I submit and continue
    And I enter title for document as "Testing submission for Byrd Amendment"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attach Test file"
    And I add file "Test1.pdf"
    And I enter text for second attachment as "Attach Test1 file"
    And I remove attached file
    And I submit and continue
    And I should not see "Attach Test1 file" on the page
    And I submit and continue
    And I confirm submission
    And I should not see "Attach Test1 file" on the page

  
  Scenario: Negative test attach non pdf file-will fail
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Byrd Amendment" as investigation type for submission
    And I submit and continue
    And I search for an investigation "103"
    And I select one of the investigation
    And I submit and continue
    And I select "Correspondence" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "No"
    And I submit and continue
    And I enter title for document as "Testing submission for Byrd Amendment "
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "apoInvestigationReport.csv"
    And I add file "apoInvestigationReport.xls"
    And I should not see "apoInvestigationReport.csv" on the page



#  As of now File waiver functionality is not ready for test look at it latter
  Scenario: validate waiver form
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Byrd Amendment" as investigation type for submission
    And I submit and continue
    And I search for an investigation "103"
    And I select one of the investigation
    And I submit and continue
    And I select "Correspondence - USITC" as document type for filing
    And I submit and continue
    And I select document security level as "No"
    And I select document public version as "No"
    And I submit and continue
    And I enter title for document as "Testing Byrd Amendment"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I file wavier form
    And I submit and continue
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
    And I confirm submission
    And I should see "Notice of Receipt" on the page


  Scenario: validate previous button
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Import Injury" as investigation type for submission
    And I submit and continue
    And I select investigation phase for submission as "Final"
    And I submit and continue
    And I search for an investigation "701"
    And I select one of the investigation
    And I submit and continue
    And I select "Correspondence - USITC" as document type for filing
    And I submit and continue
    And I select document security level as "Yes"
    And I select security level for submission as "Limited"
    And I submit and continue
    And I go to previous page
    And I should see "Limited" on the page
   

  Scenario: Validate pagination on investigation page
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Industry and Economic Analysis" as investigation type for submission
    And I submit and continue
    And I should see "103-006" on the page
    And I navigate to next page
    And I should see "103-018" on the page
#    And I navigate to last page
#    And I should see "103-2711" on the page
#    And I navigate to previous page
#    And I should see "103-018" on the page
#    And I navigate to first page
#    And I should see "103-006" on the page
#     Talk to Jason No id's or links for me to access next, last, first, previous pages to validate pagination

  Scenario: Display more than 10 investigations on the page
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Industry and Economic Analysis" as investigation type for submission
    And I submit and continue
    And I select "25" entries to display
    And I should see "103-019" on the page