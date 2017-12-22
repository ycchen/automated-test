Feature: Accept documents under Dockets desk

  #may have to change login to credentials for user id: autotest11 password: autotest15!

  Scenario: 3747 Docket desk drop down menu contains accept documents and track documents
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to accept documents page


  Scenario: 3748 Navigate to accept documents and retrieve documents
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to accept documents page
    And I enter document id "514956"
    And I enter paper copies provided as "5"
    And I retrieve the document metadata
    And page should have text "514956"
    And page should have text "Request Letter"
    And page should have text "Public"
    And page should have text "MISC-006 - Final"
    And page should have text "Southern Shrimp Alliance"
    And page should have text "John Williams"
    And page should have text "Validated"
    And page should have text "Electronic Submission"
    And page should have text "5"
    And I confirm document
    And page should have text "SUCCESS"

#  Scenario: 3749
  Scenario: 3749 Navigate to accept documents and retrieve documents and check for exceptions when Approved by the office of the Secretary
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to cover sheet exception
    And I enter document id to manage Cover Sheet Filing Exception status "601653"
    And I retrieve document status
    And page should have text "601653"
    And I approve cover sheet
    And page should have text "Cover Sheet Filing Exception for Document 601653 has been APPROVED"
    And I go to case management tab
    And I navigate to accept documents page
    And I enter document id "601653"
    And I enter paper copies provided as "5"
    And I retrieve the document metadata
    And I confirm document
    And page should have text "SUCCESS: Document 601653 accepted"


  Scenario: 3749 Navigate to accept documents and retrieve documents and check for exceptions when Denied by the office of the Secretary
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to cover sheet exception
    And I enter document id to manage Cover Sheet Filing Exception status "601653"
    And I retrieve document status
    And page should have text "601653"
    And I deny cover sheet
    And page should have text "Cover Sheet Filing Exception for Document 601653 has been DENIED"
    And I go to case management tab
    And I navigate to accept documents page
    And I enter document id "601653"
    And I enter paper copies provided as "5"
    And I retrieve the document metadata
    And I confirm document
    And page should have text "SUCCESS: Document 601653 accepted with Official Received Date"


  Scenario: When non numeric value is entered for document id should throw exception
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to accept documents page
    And I enter document id "abc"
    And I enter paper copies provided as "abc"
    And I retrieve the document metadata
    And page should have text "Document Id must be a numeric value"
    And page should have text "Paper Copies Provided must be a numeric value."

  Scenario: When clicked on Retrieve button with out entering Document Id, it should throw exception
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to accept documents page
    And I retrieve the document metadata
    And page should have text "You must enter a value for Document Id."

#    Reset button not available now when available write a scenario

  Scenario: Reset selected options
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to accept documents page
    And I enter document id "514956"
    And I enter paper copies provided as "5"
    And I reset options selected


    #  Retrieve doc id: 463399 i got 500 error, Could not deserialize result from HTTP invoker remote service
#  [http://presvc0.edis3.usitc.gov:8080/edis3-ws/remote/edis3-dm]; nested exception is
#  java.lang.ClassNotFoundException: org.springframework.orm.hibernate3.HibernateObjectRetrievalFailureException