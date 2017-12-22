Feature: Submit by create cover sheet method

  Scenario Outline: To create cover sheet
    Given I navigate to edis main page
    And I go to submission_tab
    When I create_cover_sheet
    And filed by Automation
  #    When navigate to find_firm
  #    And finds_firm USITC
    And I click on find_investigation
    And enter investigation number 701-460
    When I select <security_level_list> as security_level
    And I select <document_type_list> as document_type
    And enter document date as 11/27/2012
    And navigate to cover_sheet_button
    And I accept information
    Then I should see "Cover Sheet Submitted" on the page

  Scenarios:
    | security_level_list | document_type_list |
    | Public              | Correspondence     |
