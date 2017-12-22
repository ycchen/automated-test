Feature: 3378-Relax the restrictions on PDF validation for Electronic Submissions

  Scenario: Don't trigger validation warnings when link is in pdf and uploaded to submission file upload page
    Given I navigate to edis main page
    And I go to submission_tab
    And I e_file_document
    And I click on find_investigation
    And enter investigation number 701-460
    When I select Public as security_level
    And I select Correspondence as document_type
    And I navigate to attach_edit_doc
    Then attach file Test Documentlink.pdf into attach_file
    And enter test_file into attach_title
    And I add_attachment
    And I accept_attachments
    And I accept_information
    Then I should see "SOURCE TYPE: Electronic Submission" on the page

  Scenario: Don't trigger validation warnings when table of contents links are in pdf and uploaded to submission file upload page
    Given I navigate to edis main page
    And I go to submission_tab
    And I e_file_document
    And I click on find_investigation
    And enter investigation number 701-460
    When I select Public as security_level
    And I select Correspondence as document_type
    And I navigate to attach_edit_doc
    Then attach file Table of contents links.pdf into attach_file
    And enter test_file into attach_title
    And I add_attachment
    And I accept_attachments
    And I accept_information
    Then I should see "SOURCE TYPE: Electronic Submission" on the page
#
##  @manual
##  Didn't have a test pdf for carat
#  Scenario: ??Failing on link not on carat??Don't trigger validation warnings when carats are in pdf and uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file Carats.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information
#
##  @manual
##  passed on highlights but fails on pop ups as per requirement
#  Scenario: Don't trigger validation warnings when highlights are in pdf and uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file Test Document Highlights.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information
#
##  @manual
##  passed on ink or scribbles but fails on pop ups as per requirement
#  Scenario: ??Don't trigger validation warnings when ink or scribbles are in pdf and uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file Test Document1.7Pencil-InkPopup.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information
#
##  @manual
##  passed on stamps but fails on pop ups as per requirement
#  Scenario: ??Don't trigger validation warnings when stamps are in pdf and uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file Test Document1.7Annot.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information
#
#
##  @manual
##  passed by throwing error on pop ups as per requirement
#  Scenario: Trigger validation warnings when popups are in pdf and uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file Test Document1.7Popup.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And a message seen as "Annotation failure: Popup"
#
#
##  @manual
##  passed by throwing error on javascript as per requirement
#  Scenario: ??Trigger validation warnings when javascript is uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file Java_script-fillable-Requisition_(form 51).pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information
#
##  @manual
##  passed by throwing error on widgets as per requirement
#Scenario:  Don't trigger validation warnings when widgets is in pdf and uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file DigitalSignature-widgeterror.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information
#
##  @manual
##  passed by throwing error on widgets as per requirement
#Scenario: ?? Don't trigger validation warnings when PDF Digital Signature Locked(gave widgets error) uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file PDF Digital Signature Locked.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information
#
##  @manual
##  passed by throwing error on widgets as per requirement
#  Scenario: ?? Don't trigger validation warnings when PDF Digital Signature Unlocked(gave widgets error) uploaded to submission file upload page
#    Given I navigate to edis main page
#    And I go to submission_tab
#    And I e_file_document
#    And I click on find_investigation
#    And enter investigation number 701-460
#    When I select Public as security_level
#    And I select Correspondence as document_type
#    And I navigate to attach_edit_doc
#    Then attach file PDF Digital Signature Unlocked.pdf into attach_file
#    And enter test_file into attach_title
#    And I add_attachment
#    And I accept_attachments
#    And I accept_information