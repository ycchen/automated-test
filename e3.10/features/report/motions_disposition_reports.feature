Feature: 3678-Motions Disposition Reports

#  Background:
#    Given I navigate to edis main page
#    And I go to report tab

  Scenario: Motions disposition report when investigation and phase are given
    Given I navigate to edis main page with internal user login
    And I go to report tab
    And I navigate to motions disposition report page
    And enter report investigation_num 337-406
    And I select Enforcement2 as investigation phase
    And I submit to generate report
    Then I should see "406-131" on the page


  Scenario: Validate when motion status is changed  in document editor page should reflect on reports,generating motion number,motion status,Pagination,
    Given I navigate to edis main page with internal user login
    And I go to case management tab
    And I navigate to document workflow under case management
    And I search for case manager abu
    And I navigate to first result when searched for case manager
    And I search for investigation "337-883"
    And I select first result from document list
    And I select "Motion" as document type on document editor page
    And I save document editor changes
    And I generate motion number
    And select motion status as "Denied in Part"
    And I save document editor changes
    And I go to report tab
    Then I navigate to motions disposition report page
    And enter report investigation_num 337-883
    And I select Violation as investigation phase
    And I submit to generate report
    And I navigate to next results page
    And I should see "883-013" on the page
    And I should see "Denied in Part" on the page
    And I go to case management tab
    And I navigate to document workflow under case management
    And I search for case manager abu
    And I navigate to first result when searched for case manager
    And I search for investigation "337-883"
    And I select first result from document list
    And select motion status as "Granted"
    And I save document editor changes
    Then I go to report tab
    And I navigate to motions disposition report page
    And enter report investigation_num 337-883
    And I select Violation as investigation phase
    And I submit to generate report
    And I should see "Granted" on the page
    And I navigate to next results page
    And I should see "883-013" on the page
   # And I should see "Granted" on the page

  Scenario: Motions disposition report when Disposition status is selected along with investigation number
    Given I navigate to edis main page with internal user login
    And I go to report tab
    And I navigate to motions disposition report page
    And enter report investigation_num 337-821
    And I select Violation as investigation phase
    And I select disposition status as "DISPOSED"
    And I submit to generate report
    Then I should see "Denied in Part" on the page
    Then I should see "Granted" on the page
    And I view report in pdf format

  Scenario: Motions disposition report when Disposition status disposed is selected
    Given I navigate to edis main page with internal user login
    And I go to report tab
    And I navigate to motions disposition report page
    And I select disposition status as "DISPOSED"
    And I submit to generate report
    Then I should see "Denied" on the page
    Then I should see "Granted" on the page
    And I view report in excel format

  Scenario: Motions disposition report when Disposition status  outstanding is selected
    Given I navigate to edis main page with internal user login
    And I go to report tab
    And I navigate to motions disposition report page
    And enter report investigation_num 337-821
    And I select Violation as investigation phase
    And I select disposition status as "OUTSTANDING"
    And I select sort property as "Inv Num, Phase"
    And I select sort direction as "Descending"
    And I select records per page as "25"
    And I submit to generate report
    Then I should see "Motions Disposition Report" on the page
    And I view report in csv format

  Scenario: Reset Motions disposition report
    Given I navigate to edis main page with internal user login
    And I go to report tab
    And I navigate to motions disposition report page
    And I select disposition status as "DISPOSED"
    And I reset report info