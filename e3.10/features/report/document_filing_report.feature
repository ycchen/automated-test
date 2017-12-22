Feature: 3417,3668 Document Filling Report

  Scenario: Generate Document Filing Report when official received date is known
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    Then I select "From-Through" date range
    And I enter 07/13/2014 into date from
    And I enter 09/26/2014 into date to
    Then I submit to generate report
    And I see document number as "540551"
    And I can get to document editor
    And I see document number as "540551"

  Scenario Outline: Generate Document Filing Report when official received date is selected as From-Through date
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
    And I enter <from_date> into date from
    And I enter <to_date> into date to
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    Then I submit to generate report
    Then I should see "Correspondence" on the page
  Examples:
    | date_list    | from_date  | to_date    | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | From-Through | 01/01/2000 | 04/02/2014 | 701     | Remand         | Import Injury | Correspondence | Public              | Off Rec'd Date | Ascending      | 25               |

#    Talk to jason when searched for 01/01/2001 to till date got results-when using one of the date ON not displaying results
  Scenario Outline: Generate Document Filing Report when official received date is selected as ON
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
    And I enter <from_date> into date to
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    Then I submit to generate report
  Examples:
    | date_list | from_date    | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | On        | 10/11/2011 | 701     | Remand         | Import Injury | Comments/Response to Comments | Public              | Off Rec'd Date | Ascending      | 25               |

  Scenario Outline: Generate Document Filing Report when official received date is selected as On or After
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
    And I enter <from_date> into date from
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    Then I submit to generate report
  Examples:
    | date_list   | from_date  | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | On or After | 01/02/2000 | 701     | Remand         | Import Injury | Correspondence | Public              | Off Rec'd Date | Ascending      | 25               |


  Scenario Outline: 3668Generate Document Filing Report by selecting all options including result preferences and official date as On or Before
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
    And I enter <to_date> into date to
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    Then I submit to generate report
  Examples:
    | date_list    | to_date    | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | On or Before | 04/02/2014 | 701     | Remand         | Import Injury | Correspondence | Public              | Off Rec'd Date | Ascending      | 25               |

  Scenario Outline: Generate Document Filing Report and export results to PDF
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
    And I enter <to_date> into date to
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    Then I submit to generate report
    And I export results to pdf

  Examples:
    | date_list    | to_date    | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | On or Before | 04/02/2014 | 701     | Remand         | Import Injury | Correspondence | Public              | Off Rec'd Date | Ascending      | 25               |

  Scenario Outline: Generate Document Filing Report and export results to Excel
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
    And I enter <to_date> into date to
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    Then I submit to generate report
    And I export results to excel

  Examples:
    | date_list    | to_date    | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | On or Before | 04/02/2014 | 701     | Remand         | Import Injury | Correspondence | Public              | Off Rec'd Date | Ascending      | 25               |


  Scenario Outline: Generate Document Filing Report and export results to Csv
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
#    And I enter <from_date> into date from
    And I enter <to_date> into date to
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    Then I submit to generate report
    And I export results to csv

  Examples:
    | date_list    | to_date    | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | On or Before | 04/02/2014 | 701     | Remand         | Import Injury | Correspondence | Public              | Off Rec'd Date | Ascending      | 25               |

  Scenario Outline: Generate Document Filing Report and validate paging
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
 #    And I enter <from_date> into date from
    And I enter <to_date> into date to
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    Then I submit to generate report
    And I see document number as "16949"
    And I see date as "01/02/2002"
    And I navigate to next results page
    And I see document number as "201342"
    And I see date as "02/19/2004"


  Examples:
    | date_list    | to_date    | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | On or Before | 04/02/2014 | 701     | Remand         | Import Injury | Correspondence | Public              | Off Rec'd Date | Ascending      | 25               |

  Scenario: Generate Document Filing Report when multiple phase and document type are selected
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "On or Before" date range
    And I enter 04/02/2014 into date to
    And enter report investigation_num 701
    When I multi select investigation phase as "Prelim" and "Remand"
    And I multi select investigation type as "Import Injury" and "Sec 337"
    And I multi select document type as "Correspondence - USITC" and "Action Jacket"
    And I multi select security level as "Public " and "Privileged"
    Then I submit to generate report
    And I see document number as "20321"
    And I see date as "08/04/1997"
    And I navigate to next results page
    And I see document number as "404715"
    And I see date as "06/05/2009"

  Scenario Outline: Reset selected options
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "<date_list>" date range
    And I enter <to_date> into date to
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <inv_type_list> as investigation type
    And I select <doc_type_list> as document type
    And I select <security_level_list> as security level
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    And I select <records_per_page> as records per page
    And I select sort property for user access report as "Inv Num, Phase"
    And I select sort direction for user access report as "Descending"
    And I select records per page as "25"
    Then I reset report info

  Examples:
    | date_list     | to_date    | inv_num | inv_phase_list | inv_type_list | doc_type_list  | security_level_list | sort_property  | sort_direction | records_per_page |
    | On or Before  | 04/02/2014 | 701     | Remand         | Import Injury | Correspondence | Public              | Inv Num, Phase | Ascending      | 25               |


  Scenario: When official received date or investigation number is not populated,results are not displayed
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    Then I select "From-Through" date range
    When I submit to generate report
    Then I should see "You must enter date information in the first date field" on the page
    And I should see "You must enter date information in the second date field" on the page

#This validation not working any more shd open a ticket
  Scenario: When official received date and investigation phase are populated with out investigation number,results don't display
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    When I select "On or After" date range
    And I enter 05/01/2015 into date from
    When I select Remand as investigation phase
    And I submit to generate report
    #Then I should see "You must enter Investigation Number criteria when selecting Investigation Phases" on the page
    Then I should see "Please specify an Investigation Number when selecting Investigation Phases" on the page

#Validation for inv number is not working any more shd open a ticket
  Scenario: When only investigation phase is populated with out investigation number,results don't display
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    Then I select "From-Through" date range
    And I enter 07/13/2012 into date from
    And I enter 09/26/2014 into date to
    When I select Remand as investigation phase
    And I submit to generate report
    And I should see "Please specify an Investigation Number when selecting Investigation Phases" on the page


  Scenario: 1023 Display message when more than 10000records are retrieved when a report is generated
    Given I navigate to edis main page
    And I go to report tab
    And I go to document filling report
    Then I select "From-Through" date range
    And I enter 07/13/2012 into date from
    And I enter 09/26/2014 into date to
    And I submit to generate report
    Then I should see "Your report generated 53,543 results, more than the 10,000 results permitted. Please refine your report parameters." on the page
