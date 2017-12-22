Feature: 3339-Deleting first file even when trying to delete other file on second page

  Scenario: To fix Edis Issue when trying to delete an attached file its removing first file in second page
    Given I navigate to edis main page
    And I go to submission_tab
    And I e_file_document
    And I click on find_investigation
    And enter investigation number 701-460
    When I select Public as security_level
    And I select Correspondence as document_type
    And I navigate to attach_edit_doc
    Then attach file Test.pdf into attach_file
    And I add_attachment
    Then attach file Test1.pdf into attach_file
    And I add_attachment
    Then attach file Test2.pdf into attach_file
#    And I add_attachment
#    Then attach file Test3.pdf into attach_file
#    And I add_attachment
#    Then attach file Test4.pdf into attach_file
#    And I add_attachment
#    Then attach file Test5.pdf into attach_file
#    And I add_attachment
#    Then attach file Test6.pdf into attach_file
#    And I add_attachment
#    Then attach file Test7.pdf into attach_file
#    And I add_attachment
#    Then attach file Test8.pdf into attach_file
#    And I add_attachment
#    Then attach file Test9.pdf into attach_file
#    And I add_attachment
#    Then attach file Test10.pdf into attach_file
#    And I add_attachment
#    Then attach file Test11.pdf into attach_file
#    And I add_attachment
#    Then attach file Test12.pdf into attach_file
#    And I add_attachment
#    Then attach file Test13.pdf into attach_file
#    And I add_attachment
#    And I navigate to attachments in next page
#    And I delete last attachment




