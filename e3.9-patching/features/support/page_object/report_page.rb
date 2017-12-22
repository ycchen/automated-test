class ReportPage
  include PageObject

  link(:performance_audit_report, :id => "PageLink_12")
  text_field(:received_date, :id => "dateFromPicker")
  text_field(:through_date, :id => "dateToPicker")
  select_list(:time_range, :id => "timeRangePropertySelection")
  button(:execute_report, :id => "reportSubmit")

  #Document Copies Compliance Report
  link(:doc_copies_compliance_report, :id => "PageLink_13")
  text_field(:doc_copies_inv_num, :id => "invNumField")
  link(:doc_ver_and_des_report, :id => "PageLink_16")
  radio_button(:verified_destruct_date_selected, :id => "dateSelectionType_offrecddate")

#  Investigation Report
  link(:investigation_report, :id => "PageLink_17")
  text_field(:inv_report_inv_num, :id => "investigationNumber")
  link(:first_result_search_link, :id => "externalLink")
  link(:appropriate_result_search_link, :id => "externalLink_2")
  select_list(:inv_report_sort_order, :id => "orderDirectionSelect")
  link(:inv_report_result_first_link, :href => "https://prepres0.edis3.usitc.gov/edis3-internal/external.svc?page=edis3Search%3ADocumentList&sp=ZH4sIAAAAAAAAAFvzloG1uIhBNz2%2FTK%2B0OLMkWS81JbNYrzg1sSg5oyxfzyU%2FuTQ3Na%2FEMyUYLBRYmlpU%2Bf%2F%2Ff%2FtJGurzmRiYfRi4UuBKShgEfLISyxL1cxLz0vV98vPSrX0YWPOLUlKLUKVc80pzgVJ8YCmXzKLU5JLM%2FLwSBlsfoDv0we7QB7lDH%2BYOfX%2BQysSknFQkZ6j4o2i3rihiUMPlj4DE9My8xJLUFLDOfwenvpi1kbEY6IEoBs4CmJwPAweQnRqcWZVayFDHwOjDwFtcklhUkpmX7pmXkloBFgTaooHLFsek4pKixOQSiCPD8v%2Bd9%2FNrLdidyMTAUFHAWFAADGk%2BUCjogUJBDxxA3U8mnOlXvs%2FEwOjFwFqWmFOaCrRAAKHIrzQ3KbWobc1UWe4pD7rBBjGAAPtC24ICAPrTQBq%2BAQAA")
  text_field(:inv_report_doc_id, :id => "documentIdField")

# Investigation Disposition Report
  link(:inv_dis_report, :id => "PageLink_18")
  select_list(:tentative_ter_date_range, :id => "dateRange")
  text_field(:tentative_ter_from_date, :id => "dateFrom")
  text_field(:tentative_ter_to_date, :id => "dateTo")
  select_list(:litigation_hold_date_range, :id => "dateRange_0")
  text_field(:litigation_hold_from_date, :id => "dateFrom_0")
  text_field(:litigation_hold_to_date, :id => "dateTo_0")


#  User Audit Access Report
  link(:user_audit_access_report, :id => "PageLink_19")
  text_field(:user_id, :id => "userIdDetailField")
  button(:find_user, :id => "findUserByCriteria")
  link(:first_result_link, :id => "externalLink")
  select_list(:audit_category,:name => "auditRecordCategoriesSelect")
  select_list(:audit_record_date_range, :id => "dateRange_0")
  text_field(:audit_record_from_date, :id => "dateFrom")
  text_field(:audit_record_to_date, :id => "dateTo")

#  User List Report
  link(:user_list_report, :id => "PageLink_20")
  button(:user_list_execute_report, :id => "findUserByCriteria")

  #Administrative Record Report
  link(:administrative_record_report, :id => "PageLink_9")


  #APO Investigation Report
  link(:apo_inv_report, :id => "PageLink_10")
  select_list(:apo_doc_type, :name => "selectDocumentTypes")

  #Authorities Report
  link(:authorities_report, :id => "PageLink_11")
  select_list(:authority_group, :name => "selectGroups")
  select_list(:authorities, :name => "selectAuths")
  select_list(:inv_authorities, :name => "selectInvs")
end


