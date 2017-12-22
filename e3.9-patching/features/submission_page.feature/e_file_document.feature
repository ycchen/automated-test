Feature: Submit an E-File Document

  Scenario Outline: To submit E-File Document
    Given I navigate to edis main page
    And I go to submission_tab
    And I e_file_document
    And I click on find_investigation
    And enter investigation number 701-460
    When I select <security_level_list> as security_level
    And I select <document_type_list> as document_type
    And I navigate to attach_edit_doc
    Then attach file Test.pdf into attach_file
    And enter test_file into attach_title
    And I add_attachment
    And I accept_attachments
    And I accept_information
    And I should see "Notice of Receipt of Electronic Documents" on the page


  Scenarios:
    | security_level_list | document_type_list |
    | Public              | Correspondence     |
 #   | Confidential        |   Action Required  |
#  | Limited             |   Action Jacket|
#  | Administrative      |
#  | Privileged          |


