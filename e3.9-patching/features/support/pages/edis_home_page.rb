
class EdisPage
  include PageObject
  #page_url'https://prepres0.edis3.usitc.gov/edis3-internal/home.svc'
  page_url 'http://prepres0.edis3.usitc.gov/edis3-internal/app'

  link(:home_page_login, :id => "logonLink")
  text_field(:username, :id => "loginId")
  text_field(:password, :id => "password")
  text_field(:security_word, :id => "captchaField")
  button(:login,:id => "loginFormSubmit")
  link(:search_tab, :id => "PageLink_5")
  link(:advanced_search, :id => "PageLink_9")

#  Submission Tab
  link(:submission_tab, :id => "PageLink_6")
  link(:e_file_doc, :id => "externalLink")
  button(:find_investigation, :id => "findButton")
  #radio_button(:inv_status, :id => "invStatusRadioGroup0")
  #select_list(:inv_phase, :id => "invPhaseSelect")
  text_field(:investigation_num, :id => "invNumber")
  button(:find, :text => "Find Investigation")
  link(:first_inves_link, :id => "investigationNumberLink")

  select_list(:security, :id => "security")
  select_list(:document_type, :id => "doctype")
  button(:attach_edit_doc, :id => "formSubmit")
  file_field(:attach, :id => "upload")
  text_field(:attach_title, :id => "attachmentTitle")
  button(:add_attachment, :text => "Add Attachment")
  button(:accept_attachments, :text => "Accept Attachments")
  button(:accept_info, :id => "submitData")


  link(:cover_sheet, :id => "externalLink_0")
  text_field(:filed_by, :id => "filedByField")
  #button(:find_firm_button, :text => "Find Firm")
  #text_field(:firm_org_name, :id => "firmOrgName")
  #button(:find_firm, :text => "Find Firm")
  #link(:first_firm_link, :id => "informal_10")
  text_field(:doc_date, :id => "docDateField")
  button(:cover_sheet_button, :id => "formSubmit")
  button(:accept_info, :text => "Accept Information")

#  Search Tab
  link(:search_tab, :id => "PageLink_5")
  link(:advanced_search, :id => "PageLink_9")
  text_field(:word_search, :id => "keywords")
  select_list(:adv_inv_types, :name => "invInfoFormData_investigationTypes_BeanField")
  select_list(:apo_release, :id => "docInfoFormData_apoRelease_BeanField")
  select_list(:apo_release, :id => "docInfoFormData_apoRelease_BeanField")
  #radio_button(:adv_inv_status, :id => "informal_16")
  radio_button(:adv_inv_status, :xpath=> "//table//tbody//tr[4]//td/span//table//tbody//tr[5]//td[3]//input[3]")
  #/html/body/div/div[2]/div[3]/form/table/tbody/tr[4]/td/span/table/tbody/tr[5]/td[3]/input
  radio_button(:adv_doc_type, :id => "informal_28")
  #radio_button(:adv_doc_type, :xpath => "//div//div[2]//div[3]//form//table//tbody//tr[6]//td//span//table//tbody//tr[4]//td[3]//span//input")
    #/html/body/div/div[2]/div[3]/form/table/tbody/tr[6]/td/span/table/tbody/tr[4]/td[3]/span/input

  button(:search_button, :id => "searchSubmitTop")
  link(:open_doc, :id => "edisSectionServiceLink")
  link(:next_page, :id => "linkPage")

  link(:search_by_inv, :id => "PageLink_10")
  text_field(:search_inv_num, :id => "investigationNumber")
  select_list(:search_inv_phase, :name => "searchBeanForm_investigationPhases_BeanField")
  select_list(:search_inv_type, :name => "searchBeanForm_investigationTypes_BeanField")
  button(:inv_search_button, :id => "searchSubmitTop")
  link(:inv_first_link, :href => "javascript:document.externalLink_3.submit();")

#   Report Tab
  link(:report_tab, :id => "PageLink_4")
  link(:filing_report, :id => "PageLink_14")
  select_list(:date_range, :id => "dateRange_0")
  text_field(:date_from, :id => "dateFrom")
  text_field(:date_to, :id => "dateTo")
  text_field(:report_inv_num, :id => "invNumField")
  button(:execute_report, :id => "reportSubmit")
  select_list(:investigation_phase, :name => "selectPhases")
  select_list(:inv_type, :name => "selectInvestigationTypes")
  select_list(:doc_type, :name => "selectDocumentTypes")
  select_list(:security_level, :name => "selectSecurityLevels")

  link(:processing_report, :id => "PageLink_15")
  text_field(:processing_from_date, :id => "dateFromPicker")
  text_field(:processing_to_date, :id => "dateToPicker")
  button(:process_execute_report, :id => "reportSubmit")

#  Dockets Desk
  link(:dockets_desk_tab, :id => "PageLink_2")
  link(:dockets_accept_doc, :id => "PageLink_9")
  text_field(:dockets_doc_id, :id => "findByDocIdInput")
  button(:go_button, :id => "findByDocIdSubmit")
  select_list(:doc_details_security, :id => "securitySelectModel")
  select_list(:doc_detail_apo_release, :id => "apoReleaseSelectModel")
  select_list(:doc_detail_party_served, :id => "partyServedSelectModel")
  select_list(:doc_detail_doc_type, :id => "docTypeSelectModel")
  select_list(:doc_detail_processing_detail, :id => "specialProcessSelectModel")
  #select_list(:doc_detail_doc_date, :id => "documentDate")
  #select_list(:doc_detail_off_receive_date, :id => "officialRecvDate")   TIME TOO
  #button(:doc_detail_set_doc_status, :id => "Button")
  button(:doc_detail_save_changes, :id => "saveOnSubmit")
  button(:qa_status, :id => "Button_0")
  select_list(:dockets_desk_qa_status,:id => "qualityAssuranceSelectModel")
  button(:set_doc_status, :id => "Button")
  select_list(:dockets_desk_doc_status, :id => "documentStatusSelectModel")

#View Audit Info
link(:view_audit_info, :id => "externalLink")
text_field(:doc_date_field, :id => "DocumentDateField")
text_field(:doc_date_user_field, :id => "DocumentDateUserField")
  #span(:status_change_log_header, :class => "sectionHeaderInt")
  span(:status_change_log_header, :xpath => "//div//div[2]//div[3]//form//div[2]//div//div//span//strong")
table(:status_change_log, :id => "documentStatusChangeTable")



# 3339-Issue deleting 1st record all the time instead of deleting particular record
  link(:second_attachments_page, :id => "linkFwd")
  link(:last_attachment, :id => "deleteFileImageLink_2")
#image(:last_attachment, :xpath => "//div//div[2]//div[2]//span[2]//span//div//table//tbody//tr[5]//td[4]//a//img")



end

#def navigation
#  #s = WIN32OLE.new 'Wscript.Shell'
#  #s.Exec 'notepad'
#  system("C:\\Users\\rachana.bukka\\Desktop\\direct.svc.htm")
#end
#
#class Try
#  include PageObject
#  select_list(:document_type, :id => "doctype")
#
#end

#class Edis
#  include PageObject
#  page_url'C:\\EDIS_TEST\\direct.htm'
#
#
#  link(:last_attachment, :id => "deleteFileImageLink_2")
#
#end