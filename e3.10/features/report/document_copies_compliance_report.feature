Feature:3821-Document copies compliance report

#   Data is not available for all first 3 scenarios when searched for those dates talk to jason
  Scenario: Generate document copies compliance report and export to pdf format
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document copies compliance report
    And I enter investigation number as "731" to generate report
    And I select investigation phases as "Prelim"
    And I select report date criteria as "From - Through"
    And I enter report official_received_from date as "07/01/2016"
    And I enter report official_received_to date as "08/12/2016"
    And I submit to generate report
    And I should see "731" on the page
    And I export report to pdf format
#    As of now its not working reports are not generated

  Scenario: Generate report and export to excel format and date criteria as On or After
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document copies compliance report
    And I enter investigation number as "731" to generate report
    And I select investigation phases as "Final"
    And I select report date criteria as "On or After"
    And I enter report official_received_from date as "06/01/2016"
    And I submit to generate report
    And I should see "731-1189 Final" on the page
    And I export report to excel format

  Scenario: Generate report and export to csv format and date criteria as On
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document copies compliance report
    And I enter investigation number as "731" to generate report
    And I select investigation phases as "Final"
    And I select report date criteria as "On"
    And I enter report official_received_from date as "06/01/2015"
    And I submit to generate report
    And I should see "731" on the page
    And I export report to csv format

  Scenario:Generate report by selecting Inv number, multi selecting Inv Phase, date criteria as On or Before and test pagination
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document copies compliance report
    And I enter investigation number as "337" to generate report
    And I select report date criteria as "On or Before"
    And I enter report official_received_to date as "01/12/2016"
    And I multi select investigation phase as "Advisory" and "Enforcement" and "Final"
    And I submit to generate report
    And I should see "465883" on the page
    And I navigate to next page for more report results
    And I should see "337-698 Enforcement" on the page


  Scenario: Reset selected values
    Given I navigate to edis main page
    And I go to report tab
    And I navigate to document copies compliance report
    And I enter investigation number as "337" to generate report
    And I multi select investigation phase as "Advisory" and "Enforcement" and "Final"
    And I select report date criteria as "From - Through"
    And I enter report official_received_from date as "06/01/2015"
    And I enter report official_received_to date as "01/12/2016"
    And I reset report info