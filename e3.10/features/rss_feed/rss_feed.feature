Feature: 3756, 3757,3758-Generate Rss feed

  Scenario: Generate rss feed by selecting multiple investigation types
    #Given I am on EDIS home page
    Given I navigate to edis main page with internal user login
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Import Injury"
    And I add investigation type
    And I select rss feed investigation type as "Sec 337"
    And I add investigation type
    And I select rss feed investigation type as "Rule Making"
    And I add investigation type
    And I select on submission into edis
    And I select on document approval
    And I generate feed url
    And I copy url and paste in the browser for multi select investigation types
   # And I should see "701-460- Prelim" on the page
    And I should see "701-442 Final" on the page
#Generate RSS feed URL and Should submit a document with the same Inv type and no. that u selected for RSS feed and make sure u received email
#  and validate that by searching that submitted document id

  Scenario: 3758 Generate rss feed selecting investigation type and selecting document types from list
    Given I navigate to edis main page with internal user login
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Byrd Amendment"
    And I add investigation type
    And I click select from list radio button
    And I multi select document types from list as "Action Jacket" and "Correspondence - USITC" and "Records Management"
    And I check on submission into edis
    And I check on document approval
    And I generate feed url
    And I copy url and paste in the browser for multi document types
    And I should see "103 Final" on the page

  Scenario: 3759 Generate rss feed selecting investigation type, document types from list and adding investigation -Import Injury
    Given I navigate to edis main page
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Import Injury"
    And I add investigation type
    And I navigate to find investigation
    And I select investigation type as "Import Injury" on search for investigation page
    And I find investigation on search for investigation page
    And I select the investigation number
    And I navigate to find investigation
    And I select investigation type as "Import Injury" on search for investigation page
    And I find investigation on search for investigation page
    And I select the other investigation number
    And I click select from list radio button
    And I multi select document types from list as "Action Jacket" and "Correspondence - USITC" and "Records Management"
    And I check on submission into edis
    And I check on document approval
    And I generate feed url
    And I copy url and paste in the browser by multi selecting add investigation type
    And I should see "701044" on the page

  Scenario: Multi select from list for Investigation type and investigation instead of selecting all document types-RESULTS ARE NOT DISPLAYED WHEN URL IS PASTED
    Given I navigate to edis main page
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Byrd Amendment"
    And I add investigation type
    And I click select from list radio button
    And I multi select document types from list as "Action Jacket" and "Correspondence - USITC" and "Records Management"
    And I navigate to find investigation
    And I select investigation type as "Import Injury" on search for investigation page
    And I find investigation on search for investigation page
    And I select the investigation number
    And I navigate to find investigation
    And I select investigation type as "Import Injury" on search for investigation page
    And I find investigation on search for investigation page
    And I select the other investigation number
#    And I click select from list radio button
#    And I multi select document types from list as "Action Jacket" and "Correspondence - USITC" and "Records Management"
    And I check on submission into edis
    And I check on document approval
    And I generate feed url
    And I copy url and paste in the browser by not selecting all document types for investigation type
    And I should see "103 Final" on the page

  Scenario: 3758,3759 Generate rss feed selecting investigation type, document types from list and adding investigation
    Given I navigate to edis main page
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Byrd Amendment"
    And I add investigation type
    And I navigate to find investigation
    And I select investigation type as "Byrd Amendment" on search for investigation page
    And I find investigation on search for investigation page
    And I select one of the investigation number
    And I check on submission into edis
    And I check on document approval
    And I generate feed url
    And I copy url and paste in the browser for Byrd Amendment investigation type
    And I should see "103 Final" on the page


  Scenario: Generate rss feed selecting investigation type, document types from list and adding investigation and edit feed details-Import Injury
    Given I navigate to edis main page
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Import Injury"
    And I add investigation type
    And I navigate to find investigation
    And I select investigation type as "Import Injury" on search for investigation page
    And I find investigation on search for investigation page
    And I select the investigation number
    And I check on submission into edis
    And I check on document approval
    And I generate feed url
    And I edit feed details
    And I navigate to find investigation
    And I select investigation type as "Import Injury" on search for investigation page
    And I find investigation on search for investigation page
    And I select other investigation number
    And I generate feed url
    And I copy url and paste in the browser for Import Injury investigation type
    And I should see "104-877 Advisory" on the page

#  Scenario: 3758,3759 Generate rss feed selecting investigation type, document types from list and adding investigation-Industry and Economic Analysis
#    Given I navigate to edis main page
#    And I navigate to rss feed generator
#    And I select rss feed investigation type as "Industry and Economic Analysis"
#    And I add investigation type
#    And I navigate to find investigation
#    And I select investigation type as "Industry and Economic Analysis" on search for investigation page
#    And I find investigation on search for investigation page
#    And I select one of the investigation number
#    And I check on submission into edis
#    And I check on document approval
#    And I generate feed url
#    And I copy url and paste in the browser for Industry and Economic Analysis investigation type
#    And I should see "" on the page
##As of now there is no data avalable for this inv type on submission page

  Scenario: 3758,3759 Generate rss feed selecting investigation type, document types from list and adding investigation-Rule Making
    Given I navigate to edis main page
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Rule Making"
    And I add investigation type
    And I navigate to find investigation
    And I select investigation type as "Rule Making" on search for investigation page
    And I find investigation on search for investigation page
    And I select investigation number for Rule Making
    And I check on submission into edis
    And I check on document approval
    And I generate feed url
    And I copy url and paste in the browser for Rule Making investigation type
    And I should see "MISC-013 Final" on the page

  Scenario: 3758,3759 Generate rss feed selecting investigation type, document types from list and adding investigation-Sec 337 by selecting phase and status
    Given I navigate to edis main page
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Sec 337"
    And I add investigation type
    And I navigate to find investigation
    And I select investigation type as "Sec 337" on search for investigation page
    And I select investigation phase as "Advisory2" on search for investigation page
    And I select investigation status as "Active" on search for investigation page
    And I find investigation on search for investigation page
    And I select investigation number for Sec 337
    And I check on submission into edis
    And I check on document approval
    And I generate feed url
    And I copy url and paste in the browser for Sec 337 investigation type
    And I should see "337-406 Advisory" on the page

  Scenario: 3758,3759 Generate rss feed selecting investigation type,document types from list and adding investigation-Tariff Affairs & Trade Agreements
    Given I navigate to edis main page
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Tariff Affairs & Trade Agreements"
    And I add investigation type
    And I navigate to find investigation
    And I select investigation type as "Tariff Affairs & Trade Agreements" on search for investigation page
    And I find investigation on search for investigation page
    And I select investigation number
    And I check on submission into edis
    And I check on document approval
    And I generate feed url
    And I copy url and paste in the browser for Tariff Affairs & Trade Agreements investigation type
    And I should see "Notification of documents submitted to USITC" on the page
#    #As of now this criteria is not available- no data avalable for this inv type on submission page


  Scenario: Remove added investigation types
    Given I navigate to edis main page
    #And I navigate to rss feed generator
    And I go to developer tab
    And I navigate to rss feed under developers
    And I select rss feed investigation type as "Byrd Amendment"
    And I add investigation type
    And I navigate to find investigation
    And I select investigation type as "Byrd Amendment" on search for investigation page
    And I find investigation on search for investigation page
    And I select one of the investigation number
    And I remove investigation type
    And I remove added investigation

    Scenario: Accessing RSS feed before logging into edis application
      Given I am on EDIS home page
      And I navigate to rss feed without signing in
      And I select rss feed investigation type as "Byrd Amendment"
      And I add investigation type
      And I click select from list radio button
      And I multi select document types from list as "Action Jacket" and "Correspondence - USITC" and "Records Management"
      And I navigate to find investigation
      And I select investigation type as "Import Injury" on search for investigation page
      And I find investigation on search for investigation page
      And I select the investigation number
      And I navigate to find investigation
      And I select investigation type as "Import Injury" on search for investigation page
      And I find investigation on search for investigation page
      And I select the other investigation number
      And I generate feed url
      And I copy url and paste in the browser
      And I should see "USITC Document Notification Syndication Feed" on the page


      Scenario: 3842When no results are displayed for an investigation it should display validation message
        Given I navigate to edis main page
        #And I navigate to rss feed generator
        And I go to developer tab
        And I navigate to rss feed under developers
        And I select rss feed investigation type as "Byrd Amendment"
        And I add investigation type
        And I navigate to find investigation
        And I enter investigation number on add-edit page as "119"
        And I find investigation on search for investigation page
        Then I should see "No results found. Please change your query criteria." on the page