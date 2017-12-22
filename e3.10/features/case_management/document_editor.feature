Feature: 3697 Document editor page

#  Primary Metadata
  Scenario: 3682 Navigation links in editor page
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And page should have text "Document Editor"
    And I navigate to investigation information
    And I navigate to coding information
    And I navigate to processing information
    And I navigate to filer information
    And I navigate to date event history
    And I navigate to attachment list
    And I navigate to audit history
    And I navigate to primary metadata

  Scenario: 3683 Document List modal link to forward to Document Editor primary metadata
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
#   And Party served should be checked
    And page should have text "Document Editor - 459020"
    And page should have text "Public"
    And page should have text "Advisory"
    And page should have text "Sec 337"
    And page should have text "Audit History"

#Investigation Information
  Scenario: 3693 Document Editor investigation information
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to investigation information
    And page should have text "337-650"
    And page should have text "Sec 337"
    And page should have text "Advisory"
    And page should have text "Active"
    And page should have text "Certain Coaxial Cable Connectors and Components Thereof and Products Containing Same, Inv. No. 337-TA-650"

  Scenario: View/Change Investigation information
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to investigation information
    And I view in investigation editor
    And I change investigation info number as "337-930"
    And I change investigation phase as "Review"
    And I change investigation status as "Preinstitution"
    And I change investigation title "Inv. No. 337-TA-930"
 #   And I change official investigation number "337-TA-930"
 #   And I change requested by "Automation"
    And I save investigation info
#    ISSUE: Inv number didn't change to 337-930 still displayed 337-929 after me saving in View inv info

  Scenario: Revert View Investigation information
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to investigation information
    And I view in investigation editor
    And I change investigation info number as "337-005"
    And I change investigation phase as "Violation"
    And I change investigation status as "Active"
    And I change investigation title "Certain Novelty Glasses, Inv. No. 337-TA-55"
   # And I change official investigation number "337-055"
   # And I change requested by "Howw Manufacturing Inc. and Plus Four, Inc., Carol Stream, IL"
    And I save investigation info
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to investigation information
    And page should have text "337-055"
    And page should have text "Violation"
    And page should have text "Active"
    And page should have text "Certain Novelty Glasses, Inv. No. 337-TA-55"

  Scenario: Change Investigation
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to investigation information
    When I enter investigation number or title as "337-900"
    And I click new title to change title
    And I change investigation
    And I save document editor changes
#    Then page should have text "337-003"
#    And page should have text "Certain Doxycline, Inv. No. 337-TA-3"


#Coding Information
  Scenario: 3686 Document Editor coding information
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to coding information
#    And page should have text "19"
#    And page should have text "907-034"
    And I enter order number as "4"
    And I enter motion number as "4"
    And I enter federal registration number as "4"
    And I enter coding publication number as "4"
    And I enter action jacket control number as "4"
    And I enter coding memorandum control number as "4"
    And I enter cbi number as "4"
    And I enter coding apo number as "4"
    And I enter coding action request number as "4"
    And I enter edis1 control number as "4"
    And I save document editor changes

#    Processing Information
  Scenario: 3688 Document Editor Processing-Basic Info
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to processing information
#    And I navigate to basic info  LOOKS LIKE Basic info href ID TO GET TO IS NOT Recognized
    And I check OSE alert
    And I check document contains color
    And I enter document notes as "Test"
    And I save document editor changes
    And I should see "Test" on the page

  Scenario: Paper copies Information
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to processing information
    And I navigate to paper copies information
    And I enter copies delivered to usitc as "5"
    And I check copied delivered
    And I enter copies to print as "5"
    And I enter external copies required as "5"
    And I select external copies required delivery timeframe as "At time of hearing"
    And I save document editor changes
    And I should see "5" on the page

  Scenario: Cover sheet filing exception Information
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to processing information
    And I navigate to Cover sheet filing exception
    And I select cover sheet exception reason as "Letter from Government Official"
    And I enter cover sheet exception detail as "Test"
    And I select cover sheet reason as "Approved"
    And I save document editor changes
    And I should see "Test" on the page

#Filer info RUN THIS AGAIN
    Scenario: 3684 Document Editor filer information
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to filer information
   And I should see "michael p kalamaras" on the page
#    And page should have text "steven a glazer"
##    And page should have text "USITC"
##    And page should have text "Office of Unfair Import Investigations"
#     And I enter file by as "Automation"
    And page should have text "howw manufacturing company inc"
      And I enter file by as "howw manufacturing company inc"
 #   And page should have text "steven a glazer"

# Date event history  SHD RUN THIS AGAIN AS I GOT ERROR WHEN SAVED DATES ENTERED
  Scenario: 3687 Document Editor date event history
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to date event history
#    And page should have text "AUTOTEST"
##    And page should have text "08/18/1992"
#    And page should have text "ADMIN"
#    And I should see "08/12/1997" on the page
##    And I should see "07/22/2015" on the page
#    And page should have text "SBromley0923"
#    And I should see "01/21/2015" on the page
    And I enter intake processed date as "08/15/2016"
    And I enter received by scanning date as "08/15/2016"
    And I enter to be verified as "08/15/2016"
    And I enter verified or to be filed date as "08/15/2016"
    And I enter filed date as "08/15/2016"
    And I enter destroyed date as "08/15/2016"
    And I save document editor changes
    And page should have text "08/15/2016"

#Attachments SHD RUN AFTER BUG FIXED
  Scenario: 3689 Add multiple attachments
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to attachment list
    And I add attachment
    And I enter attachment title as "Test"
    And I enter docket notes as "For testing"
    And attach file Test.pdf into attach file
    And I add the file
    And I add attachment
    And I enter attachment title as "Test1"
    And I enter docket notes as "For testing purpose"
    And attach file Test1.pdf into attach file
    And I add the file
    And I save document editor changes
#    Then page should have text "Test1.pdf"
    When I search for attachment "Test1"
    Then page should have text "Test1"

#     SHD RUN THIS AFTER BUG IS FIXED
  Scenario: 3689 Update attached documents
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to attachment list
    And I edit attached document
    And I edit title as "Updated Test Title"
    And I edit docket notes as "Updated Test doc"
    And update file Test.pdf into attach file
    And I update the file
    And I save document editor changes
    Then page should have text "Updated Test Title"

  Scenario: 3689 Delete an attachment
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I delete attached file by selecting "Delete"
    And I delete second attached file by selecting "Delete"
    And I save document editor changes

    #Document Actions
  Scenario: Document actions status
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to document actions
    And I enable document status
    And I select document status as "Submitted"
    And I enable qa status
    And I select qa status as "Fail"
    And I save document editor changes
    And I should see "Submitted" on the page

#Uncomment add attachment steps once the bugs related to them are fixed
  Scenario: Edit existing fields and attach a document in document editor and save
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
#    And I search for document "549650" NOt able to search for a particular doc work on it
    And I navigate to one of the id for document details
    And I select document editor security as "Limited"
    And I check Filed as Public version
    And I check APO Release
    And I check Party served
    And I select editor document type as "Motion"
    And I enter editor document title as "Testing DocTitle"
    And I enter secondary document title as "SecondaryDocTitle"
    And I select special processing as "Before the Commission"
    And I enter document date as "06/10/2015"
    And I enter official received date as "06/21/2015"
    And I enter order number as "1001"
    And I enter motion number as "100-100"
    And I enter file by as "Automation"
    And I enter firm_organization as "FCC"
    And I enter on-behalf of as "USITC"
    And I enter intake processed date as "07/21/2015"
    And I enter received by scanning date as "07/21/2015"
    And I enter to be verified as "07/21/2015"
    And I enter verified or to be filed date as "07/21/2015"
    And I enter filed date as "07/21/2015"
    And I enter destroyed date as "07/21/2015"
#    And I add attachment
#    And I enter attachment title as "Test"
#    And I enter docket notes as "For testing"
#    And attach file Test.pdf into attach file
#    And I add the file
    And I save document editor changes
#    And page should have text "Test"
    And page should have text "FCC"
    


Scenario: Revert back the changes made,update with correct data delete attached document and save
   Given I navigate to edis main page
   And I go to case management tab
   And I navigate to document workflow under case management
   When I navigate to particular case manager
   And I navigate to one of the id for document details
   And I select document editor security as "Public"
   And I check Filed as Public version
   And I check APO Release
   And I check Party served
   And I select editor document type as "Correspondence"
   And I enter editor document title as "Agreement to Be Bound by the Protective Order of Laurens E. Howle"
   And I enter secondary document title as ""
   And I select special processing as "Before the ALJ"
   And I enter document date as "01/21/2015"
   And I enter official received date as "01/21/2015"
  When I enter investigation number or title as "337-9"
  And I change investigation
#   And I enter oder number as "19"
#   And I enter motion number as "907-034"
  And I check OSE alert
  And I check document contains color
  And I enter document notes as ""
   And I enter file by as "steven a glazer"
   And I enter firm_organization as "USITC"
   And I enter on-behalf of as "Office of Unfair Import Investigations"
  And I enter intake processed date as ""
  And I enter received by scanning date as ""
  And I enter to be verified as ""
  And I enter verified or to be filed date as ""
  And I enter filed date as ""
  And I enter destroyed date as ""
   And I delete attached file by selecting "Delete"
  And I enable document status
  And I select document status as "Submitted"
  And I enable qa status
  And I select qa status as "Pass"
  And I save document editor changes
  And page should have text "USITC"


  #Audit History TALK to jason when searched for autotest all results are not displayed, SHD RUN THIS agter bug is fixed
  Scenario: Audit history audit trail tab
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to audit history
    When I search for "AUTOTEST" in audit trail tab
    Then page should have text "EDIS DOCUMENT UPDATED"
    Then page should have text "EdisDocument (id: 43406) changed:"
    When I search for "edis3_admin" in audit trail tab
    Then page should have text "DOCUMENT REINDEX EXECUTED"
    Then page should have text "Document 43406 reindex executed"

  Scenario: Status change history
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to document workflow under case management
    When I navigate to particular case manager
    And I navigate to one of the id for document details
    And I navigate to audit history
    And I navigate to status change history
    When I search for "AUTOTEST" in status change history tab
    Then page should have text "AUTOTEST"
    Then page should have text "Submitted"
    Then page should have text "Validated"



