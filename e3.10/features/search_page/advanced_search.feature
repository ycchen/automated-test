Feature: Advanced document search

  Background:
    Given I navigate to edis main page
    And I go to search tab
    And I navigate to advanced search under search

  Scenario: Search with keywords
    And I search for "steel"
    And I search for results
    Then I should see "Full Text Keywords:" on the page

  Scenario: Search with keywords and reset
    And I search for "steel"
    And I reset search
    Then I should see "0 Records" on the page

  Scenario: Search with keywords and investigation data
    And I reset search
    And I search for "steel"
    And I expand investigation data
    And I enter investigation data number as "MISC-006"
    And I select advanced search phase as "Final"
    And click on side to loose focus on previous element in advanced search page
    And I select advanced search investigation type as "Byrd Amendment"
    And click on side to loose focus on previous element in advanced search page
   # And I select advanced search status as "Active"
    And I select advanced search title as "Byrd Amendment"
    And I expand to see more details
    And I navigate to document details page
    Then I should see "Stephen Koplan" on the page

  Scenario: Fill in investigation data and search
    And I reset search
    And I search for "steel"
    And I expand investigation data
    And I enter investigation data number as "337"
    And I select advanced search phase as "Violation"
    And click on side to loose focus on previous element in advanced search page
    And I select Sec 337 investigation type as "Sec 337"
    And click on side to loose focus on previous element in advanced search page
    #And I select advanced search status as "Active"
    And I select advanced search title as "Certain"
    And I search for results
    Then I should see "440060" on the page

#Document Data-Opened bug as its not giving results when entered doc title,security and type-Edis-3880
#  Scenario: Search with keyword and document data
#    And I search for "steel"
 #   And I maximize page size
#    And I expand document data
#    And I enter document ID as "600897"
#   And I enter document title as "Stainless Steel Sheet and Strip"
##  TALK TO JASON when searched with Doc Title no results r displayed
#   And I select advanced security as "Public"
#    And click on side to loose focus on previous element in advanced search page
#    And I select advanced document type as "Correspondence - USITC"
##    And I multi select advanced document type as "Correspondence - USITC" and "Correspondence" and "Complaint"
##   For some reason its selecting doc type but value is disappearing and no results r displayed
#    And click on side to loose focus on previous element in advanced search page
#    And I search for results
##    And I select Apo release
#    And I expand to see more details
#    And I navigate to document details page
#    And I should see "305799" on the page

#document index data
  Scenario: Search with keyword and action jacket control number in document index data section
    And I search for "steel"
#    And I search for that keyword
    And I expand document index data
    And I enter action jacket control number "INV-13-052"
    And I expand to see more details
    Then I navigate to documents details page to validate action jacket number
    And I should see "INV-13-052" on the page

#  Scenario: Search with keyword and action request number document index data section
#    And I search for "steel"
##    And I search for that keyword
#    And I expand document index data
#    And I enter action request number as "99-5"
#    And I expand to see more details
#    Then I navigate to document details page

#  Scenario: Search with keyword and action apo number document index data section
#    And I search for "steel"
##    And I search for that keyword
#    And I expand document index data
#    And I enter apo number as "01-162"
#    And I expand to see more details
#    And I navigate to document details page

  Scenario: Search with keyword and cbi number in document index data section
    And I search for "steel"
#    And I search for that keyword
    And I expand document index data
    And I enter CBI number as "13-85"
    And I expand to see more details
    Then I navigate to documents details page to validate cbi number
    And I should see "13-85" on the page

#  Scenario: Search with keyword and federal register notice number in document index data section
#    And I search for "steel"
##    And I search for that keyword
#    And I expand document index data
#    And I enter federal register number as ""
#    And I expand to see more details
#    And I navigate to document details page

  Scenario: Search with keyword and action memorandum control number document index data section
    And I search for "steel"
#    And I search for that keyword
    And I expand document index data
    And I enter memorandum control number as "INV-LL-029"
    And I expand to see more details
    Then I navigate to documents details page to validate memorandum control number
    Then I should see "Catherine DeFilippo" on the page

#  Scenario: Search with keyword and motion number in document index data section
#    And I search for "steel"
##    And I search for that keyword
#    And I expand document index data
#    And I enter motion number as ""
#    And I expand to see more details
#    And I navigate to document details page

#  Scenario: Search with keyword and order number in document index data section
#    And I search for "steel"
##    And I search for that keyword
#    And I expand document index data
#    And I enter order number as ""
#    And I expand to see more details
#    And I navigate to document details page


  Scenario: Search with keyword and publication number in document index data section
    And I search for "steel"
    And I expand document index data
    And I enter publication number as "4397"
    And I expand to see more details
    Then I navigate to documents details page to validate publication number
    And I should see "4397" on the page


#submitter data
    Scenario: Search with keyword and submitter data
      And I search for "steel"
      And I expand submitter data
      And I enter filed by as "William Miller Leahy"
      And I enter on behalf of as "Alliance for Fair Trade with India"
      And I select firm or organisation as "Akin Gump Strauss Hauer & Feld, LLP"
      And I expand to see more details
      And I navigate to document details page
      And I should see "Alliance for Fair Trade with India" on the page

#Date Data
  Scenario: 3603 Search with keyword and date
    And I maximize the page
    And I expand date data
    And I select official received date range
#    And I click on official received from date
    And I select official received from date as "4/21/2011"
    And I select official received to date as "4/21/2015"
    And I select document date range
    And I select document from date as "1/1/2013"
    And I select document to date as "4/30/2013"
    And I navigate to document details page
    And I should see "Document Detail" on the page

