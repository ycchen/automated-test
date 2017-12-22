require 'date'

class ReportPage
  include PageObject

  link(:report_page, :id => "reportsMenu")
  link(:doc_filing_report, :id => "documentFilingReportNavLink")
  select_list(:official_received_date, :id => "offRecdDateComparisonType")
  text_field(:date_from, :id => "offRecdDate1")
  text_field(:date_to, :id => "offRecdDate2")
  button(:submit_report, :id => "submitReport")
  text_field(:inv_no, :id => "query.investigationNumber")
  select_list(:inv_phase, :id => "query.investigationPhases")
  select_list(:inv_type, :id => "query.investigationTypes")
  select_list(:doc_type, :id => "query.documentTypes")
  select_list(:sec_level, :id => "query.securityLevels")
  select_list(:sort, :id => "resultPrefSortProp")
  select_list(:sort_dir, :id => "resultPrefSortDir")
  select_list(:records_per_page, :id => "resultPrefPageSize")
  button(:reset, :id => "resetCriteria")


# document processing report
  link(:doc_process_report, :id => "documentProcessingReportNavLink")
  text_field(:off_from_date, :id => "fromDate")
  text_field(:off_to_date, :id => "toDate")

  # apo investigation report
  link(:apo_inv_report, :id => "apoInvestigationReportNavLink")
  link(:apo_next_results_page, :id => "pageButton_lower1")
  link(:apo_export_to_pdf, :id => "pdfExportButton")
  link(:apo_export_to_excel, :id => "xlsExportButton")
  link(:apo_export_to_csv, :id => "csvExportButton")

  # administrative record report
  link(:admin_record_report, :id => "findInvestigationNavLink")
  text_field(:admin_record_inv_num, :id => "query.investigationNumber")
  select_list(:admin_inv_phase, :id => "query.investigationPhases")
  select_list(:admin_record_inv_status, :id => "query.investigationStatus")
  text_field(:admin_record_inv_title, :id => "query.investigationName")
  select_list(:admin_record_sort_property, :id => "resultPrefSortProp")
  select_list(:admin_record_direction, :id => "resultPrefSortDir")
  select_list(:admin_record_per_page, :id => "resultPrefPageSize")

  # investigation report
  link(:inv_report, :id => "investigationReportNavLink")
  select_list(:inv_report_sec_level, :id => "query.securityLevels")

  # user list report-parameters
  text_field(:user_list_id, :id => 'query.loginId')
  text_field(:user_list_fn, :id => 'query.firstName')
  text_field(:user_list_ln, :id => 'query.lastName')
  select_list(:user_list_off_div, :id => "query.officeDivision")
  select_list(:user_list_firm_org, :id => "firmOrgHolder")
  select_list(:user_list_acct_status, :id => "query.accountStatus")
  select_list(:user_list_lnt_ext, :id => "query.userType")

  #  authorities report-parameters
  select_list(:user_list_aut_grp, :id => "query.groups")
  select_list(:user_list_aut, :id => "query.authorities")
  select_list(:user_list_inv_aut, :id => "query.investigations")

  #  Document Verification And Destruction Report
  text_field(:dvdr_inv_no, :id => 'query.investigationNumber')
  text_field(:dvdr_doc_id, :id => 'query.documentId')
  select_list(:dvdr_date_selected, :id => "query.dateSelectionType")
  select_list(:dvdr_doc_to_return, :id => "query.destroyedFilter")

  # Document copies compliance report
  select_list(:dccr_inv_phase, :id => "query.investigationPhases")


  # Dockets performance audit report
  select_list(:dpar_range, :id => "query.timeRange")
  select_list(:dpar_filed, :id => "query.orgSourceTypeName")

  # Investigation Disposition Report


  end