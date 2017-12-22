Feature: 3711,3712,3718,3659, Create Investigation

#  Find Investigation feature is already there in manage inv check it
#  -ve scenario-create inv with alphabets instead of numbers

#  Talk to JASON after creating inv its not populating values for official Inv No and Requested by??
#  some have Inv phase only option as "Final" for ex: Inv Type: Byrd Amendment is there any rule or cases that i should be aware of??
#  Talk To them for Automation purpose INV Phase is not allowing to select, i had to hard code it to select only Advisory as of now Shd change it

  #Edis-850-Talk TO JASON created an investigation as Industry and Econ, and only phase available was Final. After creating
#  I was able to change it to other phase types and was able to save it,
#  Earlier it gave only one option "Final" for Inv phase and now after creating have options to change is it valid??
  Scenario Outline: 3711 Create investigation when inv type is byrd amendment and sec 337
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I navigate to create investigation
    And I select "<inv_type>" as investigation type to create investigation
    And I submit and continue
    And I submit and continue
    And I select Permanent Investigation as investigation status
    And I submit and continue
    And I enter random investigation number
    And I submit and continue
    And I select investigation phase value as "<inv_phase>"
    And I submit and continue
    And I enter "<inv_title>" as investigation title
    And I finish creating an investigation
    And I confirm submission of investigation
    And I should see "<inv_phase_value>" on the page
    And I should see "<inv_type_value>" on the page
  Examples:
    | inv_type       | inv_phase | inv_title               | inv_phase_value | inv_type_value |
    | Byrd Amendment | Final     | Test for Byrd Amendment | Final           | Byrd Amendment |
    | Sec 337        | Remand2   | Test for Sec 337        | Remand2         | Sec 337        |


  Scenario Outline: Create investigation with different investigation types and category
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I navigate to create investigation
    And I select "<inv_type>" as investigation type to create investigation
    And I submit and continue
    And I select "<inv_category>" as investigation category to create investigation
    And I submit and continue
    And I select Permanent Investigation as investigation status
    And I submit and continue
    And I enter random investigation number
    And I submit and continue
    And I select investigation phase value as "<inv_phase>"
    And I submit and continue
    And I enter "<inv_title>" as investigation title
    And I finish creating an investigation
    And I confirm submission of investigation
#    And I should see "<inv_phase_value>" on the page
    And I should see "<inv_type_value>" on the page
  Examples:
    | inv_type                          | inv_category | inv_title                                  | inv_type_value                    |inv_phase|
    | Import Injury                     | 104          | Test for Import Injury                     | Import Injury                     |Advisory |
    | Industry and Economic Analysis    | 1921         | Test for Industry and Economic Analysis    | Industry and Economic Analysis    |Final    |
    | Rule Making                       | 201          | Test for Rule Making                       | Rule Making                       |Final    |
    | Tariff Affairs & Trade Agreements | 303          | Test for Tariff Affairs & Trade Agreements | Tariff Affairs & Trade Agreements |Final    |

  Scenario Outline: 3711 Create investigation when inv type is byrd amendment and sec 337 and when inv status is pre institution
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I navigate to create investigation
    And I select "<inv_type>" as investigation type to create investigation
    And I submit and continue
    And I submit and continue
    And I select Pre institution Investigation as investigation status
    And I submit and continue
    And I generate random next number
    And I submit and continue
    And I select investigation phase value as "<inv_phase>"
    And I submit and continue
    And I enter "<inv_title>" as investigation title
    And I finish creating an investigation
    And I confirm submission of investigation
    And I should see "<inv_phase_value>" on the page
    And I should see "<inv_type_value>" on the page
  Examples:
    | inv_type       | inv_phase | inv_title               | inv_phase_value | inv_type_value |
   # | Byrd Amendment | Final     | Test for Byrd Amendment | Final           | Byrd Amendment |
    | Sec 337        | Remand   | Test for Sec 337        | Remand          | Sec 337        |


  Scenario Outline: Create investigation with different investigation types, category and when inv status is pre institution
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I navigate to create investigation
    And I select "<inv_type>" as investigation type to create investigation
    And I submit and continue
    And I select "<inv_category>" as investigation category to create investigation
    And I submit and continue
    And I select Pre institution Investigation as investigation status
    And I submit and continue
    And I generate random next number
    And I submit and continue
    And I select investigation phase value as "<inv_phase>"
    And I submit and continue
    And I enter "<inv_title>" as investigation title
    And I finish creating an investigation
    And I confirm submission of investigation
    And I should see "<inv_phase_value>" on the page
    And I should see "<inv_type_value>" on the page
  Examples:
    | inv_type                          | inv_category | inv_phase | inv_title                                  | inv_type_value                    | inv_phase_value |
#    | Import Injury                     | 104          | Advisory  | Test for Import Injury                     | Import Injury                     | Advisory        |
#    | Industry and Economic Analysis    | 1921         | Final     | Test for Industry and Economic Analysis    | Industry and Economic Analysis    | Final           |
#    | Rule Making                       | 201          | Prelim    | Test for Rule Making                       | Rule Making                       | Prelim          |
    | Tariff Affairs & Trade Agreements | 303          | Final   | Test for Tariff Affairs & Trade Agreements | Tariff Affairs & Trade Agreements | Remand          |


  Scenario: 3712 Create investigation and make sure investigation info is correct
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I navigate to create investigation
    And I select "Byrd Amendment" as investigation type to create investigation
    And I submit and continue
    And I submit and continue
    And I select Permanent Investigation as investigation status
    And I submit and continue
    And I enter random investigation number
    And I submit and continue
    And I select investigation phase value as "Final"
    And I submit and continue
    And I enter "Test for Byrd Amendment" as investigation title
    And I finish creating an investigation
    And I confirm submission of investigation
    And investigation phase should have "Final"
    And investigation type should have "Byrd Amendment"
    And investigation status should have "Active"
    And investigation title should have "Test for Byrd Amendment"

#ASK JASON who will have permissions to update created inv
#   Was not able to Update as inv Title-ID is not found look into it- Was able to edit manually
  Scenario: 3718 Create investigation, update-investigation info, metadata, assignments and save
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I navigate to create investigation
    And I select "Import Injury" as investigation type to create investigation
    And I submit and continue
    And I select "104" as investigation category to create investigation
    And I submit and continue
    And I select Pre institution Investigation as investigation status
    And I submit and continue
    And I generate random next number
    And I submit and continue
    And I select investigation phase value as "Advisory"
    And I submit and continue
    And I enter "Test for Import Injury" as investigation title
    And I finish creating an investigation
    And I confirm submission of investigation
    And I update created investigation phase to "Lit"
    And I update created investigation type to "Rule Making"
    And I update created investigation status to "Active"
    And I enter primary case manager as "Mays Gerald"
#    And I update created investigation title to "Test for Rule Making"
    And I navigate to additional metadata
    And I enter document number as "12345"
    And I enter pre-institution inv number as "337"
    And I enter pre-institution phase as "Final"
   # And I navigate to assignments
   # And I enter secondary case manager as "Barton Lisa"
    And I navigate to disposition
    And I enter tentative termination date as "01/01/2005"
    And I enter litigation hold date as "06/06/2016"
    And I enter notes as "automation"
    And I navigate to audit tool
    And I save investigation
    And I should see "Investigation Information Updated" on the page


#    TALK TO Jason Was able to create inv, by entering non numeric value for inv number is that ok??Was able to do same in old app too..
  Scenario: Negative case Create investigation by entering non numeric values for investigation number
    Given I navigate to edis main page
    And I go to case management tab
    And I navigate to manage investigations under case management
    And I navigate to create investigation
    And I select "Byrd Amendment" as investigation type to create investigation
    And I submit and continue
    And I submit and continue
    And I select Permanent Investigation as investigation status
    And I submit and continue
    And I enter inv number as "abcd"
    And I submit and continue
    And I select investigation phase value as "Final"
    And I submit and continue
    And I enter "Test for Byrd Amendment" as investigation title
    And I finish creating an investigation
    And I confirm submission of investigation
    And I should see "Byrd Amendment" on the page

    Scenario: 3659 Validate search field in audit tool
      Given I navigate to edis main page
      And I go to case management tab
      And I navigate to manage investigations under case management
      And I navigate to create investigation
      And I select "Import Injury" as investigation type to create investigation
      And I submit and continue
      And I select "104" as investigation category to create investigation
      And I submit and continue
      And I submit and continue
      And I select Pre institution Investigation as investigation status
      And I submit and continue
      And I generate random next number
      And I submit and continue
      And I select investigation phase value as "Advisory"
      And I submit and continue
      And I enter "Test for Import Injury" as investigation title
      And I finish creating an investigation
      And I confirm submission of investigation
      And I navigate to audit tool
      And I search for "Edis Investigation" in audit tool
      And I should see "EdisInvestigation" on the page