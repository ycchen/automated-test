Feature: 3662 3663 3665 3751 3791 Secretary Tab

  Scenario: 3666 Cover sheet exception
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to cover sheet exception
    And I enter document id to manage Cover Sheet Filing Exception status "601653"
    And I retrieve document status
    And page should have text "601653"
    And page should have text "4 More Motions Disposed"
    And page should have text "Order"
    And page should have text "Confidential"
    And page should have text "337-1000 - Violation"
    And page should have text "USITC"
    And page should have text "Bennie Caesar"
    And page should have text "Submitted"
    And page should have text "COVER SHEET EXCEPTION INFO"
    And page should have text "Cover Sheet Exception Reason"
    And page should have text "Cover Sheet Exception Detail"
    And page should have text "Cover Sheet Exception Decision"


  Scenario: 3667 Cover sheet exception is approved
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to cover sheet exception
    And I enter document id to manage Cover Sheet Filing Exception status "601653"
    And I retrieve document status
    And page should have text "601653"
    And I approve cover sheet
    And page should have text "Cover Sheet Filing Exception for Document 601653 has been APPROVED"
    And I enter document id to manage Cover Sheet Filing Exception status "601653"
    And I retrieve document status
    And page should have text "APPROVED"

  Scenario: 3667 Cover sheet exception is denied
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to cover sheet exception
    And I enter document id to manage Cover Sheet Filing Exception status "601653"
    And I retrieve document status
    And page should have text "601653"
    And I deny cover sheet
    And page should have text "Cover Sheet Filing Exception for Document 601653 has been DENIED"
    And I enter document id to manage Cover Sheet Filing Exception status "601653"
    And I retrieve document status
    And page should have text "DENIED"

  Scenario: 3791 Validation returns document is not a paper filing when searched for id 514955
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to cover sheet exception
    And I enter document id to manage Cover Sheet Filing Exception status "514955"
    And I retrieve document status
    And page should have text "Document with id 514955 is not a paper filing"

  Scenario: 3791 Validation returns document is not a paper filing when searched for id 552138
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to cover sheet exception
    And I enter document id to manage Cover Sheet Filing Exception status "552138"
    And I retrieve document status
    And page should have text "Document with id 552138 does not require an exception"


#  This happens when internal people created this ID Retrieve doc id: 463399 i got 500 error, Could not deserialize result from HTTP invoker remote service
#  [http://presvc0.edis3.usitc.gov:8080/edis3-ws/remote/edis3-dm]; nested exception is
#  java.lang.ClassNotFoundException: org.springframework.orm.hibernate3.HibernateObjectRetrievalFailureException