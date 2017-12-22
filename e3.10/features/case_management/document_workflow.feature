Feature: 3653, 3654, 3655, 3656, 3580 Document workflow

  Scenario: 3653 Create Document Workflow Homepage
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    Then page should have text "Case Manager Dashboard"
    When I select Investigation tab
    Then page should have text "Investigation Dashboard"


  Scenario: 3654 Navigate to document workflow Case Manager Dashboard UI
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    Then page should have text "Case Manager Dashboard"
    And page should have text "Pending"
    And page should have text "Submitted"
    And page should have text "Hold"
    And page should have text "In Review"
    And page should have text "Validated"
#    And page should have text "QA NR"
#    And page should have text "QA Failed"

  Scenario: 3654 Validating the count
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
#   When I go to a case manager row
    Then case manager dashboard should have case manager as "Bromley, Sally"
    And count of pending documents in all assigned investigations as "6"
    And count of submitted documents in all assigned investigations as "9"
    And count of hold document in all assigned investigations as "6"
    And count of in review document in all assigned investigations as "0"
    And count of validated documents in all assigned investigations as "52802"
    And count of QA unreviewed documents in all assigned investigations as "36609"
    And count of QA failed documents in all assigned investigations as "3"
    And case manager dashboard should have case manager as "New Request"
    And case manager dashboard should have case manager as "Unassigned"
    And case manager dashboard should have case manager as "Total"

#    SHD IMPLEMENT count


  Scenario: Navigate to particular case manager
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    Then I should see "Document Editor" on the page


#  Document Editor
  Scenario: Navigate to document editor primary metadata
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    #    SHD IMPLEMENT DOCUMENT EDITOR PAGE
    And I select document editor security as "Public"
#    And I check Filed as Public version
#    And I check APO Release
    And I check Party served
    And I select editor document type as "Motion"
    And I enter editor document title as "DocTitle"
    And I enter secondary document title as "SecondaryDocTitle"
    And I select special processing as "Before the ALJ"
    And I enter document date as "01/10/2015"
    And I enter official received date as "01/21/2015"



#3655 Investigation Dashboard
  Scenario: Navigate to investigation dashboard
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    And I select Investigation tab
    Then page should have text "Investigation Dashboard"
    And I select case manager as "Corley, Sheri"
    Then page should have text "701-464 - Final"

  Scenario: 3673 Navigate to investigation dashboard and should have following data
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    And I select Investigation tab
    Then page should have text "Investigation Dashboard"
    And I select case manager as "Bromley, Sally"
    Then page should have text "Title"
    Then page should have text "Pending"
    Then page should have text "Submitted"
    Then page should have text "Hold"
    Then page should have text "In Review"
    Then page should have text "Validated"

  Scenario: Navigate to active/preinstitution investigation in investigation dashboard
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    And I select Investigation tab
    Then page should have text "Investigation Dashboard"
    And I select case manager as "Bromley, Sally"
    And I go to one of the investigation
    And I click on id for document details
    Then I should see "Document Editor" on the page

  Scenario: Navigate to inactive/cancelled investigation in investigation dashboard
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    And I select Investigation tab
    And I select case manager as "Bromley, Sally"
    And I select inactive-cancelled investigations
#    And I select active-preinstitution investigations
##    And I select inactive-cancelled investigations  TALK TO JASON THIS IS WRONG
    And I go to one of the inactive investigation
    And I click on id for document details
    Then I should see "Document Editor" on the page

#    3656 Create Basic Document List Page
  Scenario: Navigate to document list page
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    Then page should have text "Bromley, Sally"
    And page should have text "ID"
    And page should have text "Investigation"
    And page should have text "Submitter"
    And page should have text "Doc Type"
    And page should have text "Security"
    And page should have text "APO"
    And page should have text "Off Rec'd Date"
    And page should have text "Status"
    And page should have text "QA Status"
    And page should have text "Att. Count"
    And page should have text "Last Status Change"

  Scenario: 3656 Document list page table can be filtered using search form field
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    Then page should have text "Bromley, Sally"
    And search for "STEVENSUVA" in search form filed
    And I navigate to document editor page by clicking on id
    Then page should have text "Document Editor"

#  Scenario: 1095 Document list-sort by security
#    Given I navigate to edis main page
#    And I go to case management tab
#    And I navigate to document workflow under case management
#    When I navigate to particular case manager
#    Then page should have text "Bromley, Sally"
#    When I sort by security

  Scenario: 3580 Navigate to document list page, that should have title
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case managers submitted section
    Then page should have text "Burch, Tyrell - Submitted"