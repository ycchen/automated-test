Feature: 3542 Quick Search

  Background:
    Given I navigate to edis main page

  Scenario: keyword word search using quick search
    And I enter keyword "steel"
    And I navigate to first result
    Then I see document id as "305799"
    And document title as "Cut-to-Length - Letter to Customs Amending List to Add CitiSteel"
    And security as "Public"
    And document type as "Correspondence - USITC"
    And investigation number as "MISC-006"
#    And investigation title as "Byrd Amendment (Continued Dumping and Subsidies Offset Act of 2000, Title X of Public Law 106-387)"
    And investigation phase as "Final"
    And investigation type as "Byrd Amendment"
    And investigation status as "Active"
    And filed by as "Shara L. Aranoff"
    And firm organisation as "USITC"
    And on behalf of "Chairman"
    And document date "2008-07-18 00:00:00.0"
    And system received date as "2008-07-23 00:00:00.0"
    And official received date as "2008-07-23 00:00:00.0"
    And section 337 process as "None"
    And attachment id as "373845"
    And attachment title as "305799"
    And attachment size as "277132"
    And attachment create date as "2008-06-30 00:00:00.0"
#    Coding information as of now data is not displayed


  Scenario: search investigation number using quick search
    And I enter keyword "337-TA-895"
    And I navigate to first result when searched for investigation number
    Then I see document id as "519913"
    And document title as "Return of Notice of Institution Sent to Elizabeth Kraus, Insufficient Address"
    And security as "Public"
    And document type as "Returned Mail"
    And investigation number as "337-895"
#    And investigation title as "Byrd Amendment (Continued Dumping and Subsidies Offset Act of 2000, Title X of Public Law 106-387)"
    And investigation phase as "Violation"
    And investigation type as "Sec 337"
    And investigation status as "Active"
    And filed by as "Lisa R. Barton"
    And firm organisation as "USITC"
    And on behalf of "Office of the Secretary"
    And document date "2013-10-21 00:00:00.0"
    And system received date as "2013-10-21 11:37:56.209"
    And official received date as "2013-10-21 11:37:00.0"
    And section 337 process as "None"
    And attachment id as "874900"
    And attachment title as "874900"
    And attachment size as "216385"
    And attachment create date as "2013-10-21 11:37:51.226"