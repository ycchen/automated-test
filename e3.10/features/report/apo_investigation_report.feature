Feature: 3420-APO Investigation Report

  Scenario Outline: Generate Apo investigation Report
    Given I navigate to edis main page
    And I go to report tab
    And I go to apo investigation report
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <doc_type_list> as document type
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    Then I submit to generate report
    And I navigate to next results page
    Then I should see "337-994" on the page
  Examples:
    | inv_num | inv_phase_list | doc_type_list | sort_property  | sort_direction |
    | 337     | Violation      | Action Jacket | Inv Num, Phase | Descending     |


  Scenario Outline: Generate Apo investigation Report and export to PDF
    Given I navigate to edis main page
    And I go to report tab
    And I go to apo investigation report
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <doc_type_list> as document type
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    Then I submit to generate report
    And I export results to pdf
  Examples:
    | inv_num | inv_phase_list | doc_type_list  | sort_property | sort_direction |
    | 731     | Review3        | Action Request | Inv Num, Phase   | Ascending      |

  Scenario Outline: Generate Apo investigation Report and export to Excel
    Given I navigate to edis main page
    And I go to report tab
    And I go to apo investigation report
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <doc_type_list> as document type
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    Then I submit to generate report
    And I export results to excel
  Examples:
    | inv_num | inv_phase_list | doc_type_list          | sort_property | sort_direction |
    | 337     | Enforcement    | Correspondence - USITC | Inv, Sec Level | Ascending      |

  Scenario Outline: Generate Apo investigation Report and export to CSV
    Given I navigate to edis main page
    And I go to report tab
    And I go to apo investigation report
    And enter report investigation_num <inv_num>
    When I select <inv_phase_list> as investigation phase
    And I select <doc_type_list> as document type
    And I select <sort_property> as sort property
    And I select <sort_direction> as sort direction
    Then I submit to generate report
    And I export results to csv
  Examples:
    | inv_num | inv_phase_list | doc_type_list          | sort_property  | sort_direction |
    | 731     | Prelim         | Correspondence - USITC | Inv, Sec Level | Descending     |

  Scenario: Generate Apo investigation Report when multiple phase and document type are selected
    Given I navigate to edis main page
    And I go to report tab
    And I go to apo investigation report
    And enter report investigation_num 731
    When I multi select investigation phase as "Prelim" and "Remand"
    And I multi select document type as "Correspondence - USITC" and "Action Jacket"
    And I select Inv, Sec Level as sort property
    And I select Descending as sort direction
    Then I submit to generate report
    And I export results to csv

  Scenario: 1023 Display message when more than 10000records are retrieved when a report is generated
    Given I navigate to edis main page
    And I go to report tab
    And I go to apo investigation report
    And enter report investigation_num 337
    And I submit to generate report
    Then I should see "Please refine your report parameters." on the page
