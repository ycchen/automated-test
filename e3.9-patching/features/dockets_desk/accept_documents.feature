Feature: To accept submitted document

  Scenario Outline: Accept documents that are already submitted
    Given I navigate to edis main page
    And I go to dockets desk tab
    And I navigate to accept documents page
    And I enter <doc_id> as doc id
    And I navigate to document detail page
    And I select <security> as security
    And I select No as apo release for document detail page
    And I select No as party served for document detail page
    And I select <document_type> as document type for document detail page
    And I select None as processing detail for document detail page
    And I save changes
  Examples:
    | doc_id | security | document_type  |
    | 601684 | Public   | Correspondence |


  Scenario Outline: Update by changing document status that are already submitted
    Given I navigate to edis main page
    And I go to dockets desk tab
    And I navigate to accept documents page
    And I enter <doc_id> as doc id
    And I navigate to document detail page
    And I select <security> as security
    And I select No as apo release for document detail page
    And I select No as party served for document detail page
    And I select <document_type> as document type for document detail page
    And I select None as processing detail for document detail page
    And I change quality assurance status
    And I select Pass as quality assurance status
    And I set document status
    And I select <document_status> as document status
    And I save changes
    Then I should see "521144" on the page
  Examples:
    | doc_id | security | document_type  |document_status|
    | 521144 | Public   | Correspondence | Archived      |



#  Scenario Outline: View audit information after accepting documents that are already submitted
#    Given I navigate to edis main page
#    And I go to dockets desk tab
#    And I navigate to accept documents page
#    And I enter <doc_id> as doc id
#    And I navigate to document detail page
##    And I select <security> as security
##    And I select No as apo release for document detail page
##    And I select No as party served for document detail page
##    And I select <document_type> as document type for document detail page
##    And I select None as processing detail for document detail page
##    And I save changes
#    And I view audit information
##    And I see document date as 04/01/2013 and user as AUTOTEST
#    And I see STATUS CHANGE LOG
#    And status_change_log table data field 1 has CHANGE DATE for row 1
#    And status_change_log table data field 2 has OLD STATUS for row 1
#    And status_change_log table data field 3 has NEW STATUS for row 1
#    And status_change_log table data field 4 has USER for row 1
#
#
#
#  Examples:
#    | doc_id | security | document_type  |
#    | 500043 | Public   | Correspondence |