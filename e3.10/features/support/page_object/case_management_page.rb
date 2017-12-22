 # require 'action_view/helpers'
 # require 'active_support'
 # require 'active_support/benchmarkable'
 # require 'active_support/core_ext'
 # require 'i18n'
class CaseManagementPage
  include PageObject
  link(:case_management, :id => "caseManagementMenu")
  button(:inv_tab, :class => "btn btn-default")
  link(:doc_workflow, :id => "documentWorkflowNavLink")



  div(:doc_list_search, :xpath => "//*[@id='documentListDataTable_filter']/label")
  link(:case_manager, :id => "cmlink_name_7876")
  link(:cm_for_count, :id => "caseManager_4")
  select_list(:inv_cs, :class => "form-control input-sm")

  # manage investigations
  link(:cm_manage_inv, :id => "manageInvNavLink")
  select_list(:cm_manage_inv_status, :class => "form-control")
  text_field(:cm_inv_num, :id => "investigationNumber")
  select_list(:cm_inv_phase, :id => "invPhase")
  select_list(:cm_inv_type, :id=> "invType")
  select_list(:cm_inv_status, :id => "invStatus")
  text_field(:cm_inv_title, :id => "investigationTitle")
  text_field(:cm_off_inv_num, :id => "officialInvNum")
  link(:cm_home_button, :id => "homeBreadCrumb")
  link(:cm_find_inv_button, :id => "findInvBreadCrumb")
  # img(:heading, :class => "img-rounded")

  # create investigation
  link(:cm_create_inv, :id => "createInvBtn")
  select_list(:create_inv_type, :id => "investigationType")
  # select_list(:create_inv_phase, :xpath=> "form-control")
   select_list(:create_inv_phase, :id=> "phase")
  # select_list(:create_inv_phase, :name=> "invPhase")
  link(:create_inv_num, :id => "nextDocketNumber")
  text_field(:create_inv_number, :id => "Investigation_Number")
  text_field(:create_inv_title, :id => "Investigation_Title")
  button(:create_inv_finish, :id => "finish")
  radio_button(:create_inv_status, :id => "Investigation_Status")
  radio_button(:create_inv_stat, :id => "Investigation_Status")
  # select_list(:create_inv_category, :name => "invCategory")
  select_list(:update_create_inv_type, :id => "invType")
  select_list(:update_create_inv_phase, :id => "invPhase")
  select_list(:update_create_inv_status, :id => "invStatus")
  text_area(:update_create_inv_title, :id => "InvestigationTitle")
  button(:create_inv_finish_element, :id => "next_btn")
  button(:confirm_submission, :id => "submission_confirm")
  button(:deny_submission, :class => "btn btn-danger")

  # additional metadata
  link(:cm_additioanl_metadata, :id => "addnMetaDataTab")
  text_field(:cm_doc_num, :id => "docketNum")
  text_field(:cm_pre_institution_inv_num, :id => "preInstInvNumber")
  select_list(:cm_pre_institution_phase, :id => "preInstPhase")

  link(:cm_assignments_tab, :id => "assignmentsTab")
  select_list(:cm_pri_case_manager, :id => "priCaseManager")
  select_list(:cm_sec_case_manager, :id => "secCaseManager")


  link(:cm_disposition, :id => "dispositionTab")
  text_field(:cm_tentative_term_date, :id => "tentativeTerminationDateId")
  text_field(:cm_litigation_hold_date, :id => "litigationHoldDateId")
  text_field(:cm_notes, :id => "notes")

  link(:cm_audit_tool, :id => "auditToolTab")

  link(:cm_save_inv, :id => "investigationSavebtn")

  # Create Investigation
  link(:create_inv_button, :id => "createInvBtn")
  #select_list(:create_inv_type, :id => "Investigation_Type")
  button(:create_save, :id => "save")
  radio_button(:create_invstatus, :class => "requiredField")
  text_field(:create_invnum, :id => "Investigation_Number")
  text_field(:create_invphase, :id => "Investigation_Phase")
  text_field(:create_invtitle, :id => "Investigation_Title")
  button(:create_finish_button, :id => "finish")
  select_list(:create_invcategory, :id => "Investigation_Category")

  # document editor
  select_list(:de_security, :id => "doc.securityLevel")
  checkbox(:de_fpv, :id => "doc.publicVersionOfConfidentialDoc1")
  checkbox(:de_apo, :id => "doc.apoReleaseFlag1")
  checkbox(:de_ps, :id => "doc.partyServedFlag1")
  select_list(:de_doc_type, :id => "doc.docType")
  text_field(:de_doc_title, :id => "documentTitle")
  text_field(:de_sec_doc_title, :id => "doc.secondaryTitle")
  select_list(:de_sprocessing, :id => "doc.specialProcessing")
  text_field(:de_doc_date, :id => "documentDate")
  text_field(:de_off_received_date, :id => "officialReceivedDate")

  # Attachment
  text_field(:de_att_title , :id => "add_att_title")
  text_field(:de_doc_notes , :id => "add_att_notes")
  text_field(:de_title , :id => "att_title")
  text_area(:de_edit , :id => "att_notes")
  file_field(:de_attach_file, :id => "add_att_file")
  file_field(:de_update_file, :id => "att_file")
  button(:de_add_file, :id => "addAttachment")
  text_field(:attachment_search, :xpath => "id('attachmentListDataTable_filter')//label//input")

# Investigation Info
  text_field(:de_change_inv_title, :class => "typeahead form-control tt-input")
  select_list(:de_inv_phase, :id => "invPhase")
  select_list(:de_inv_status, :id => "invStatus")
  button(:de_change_inv, :id => "changeInv")
  text_field(:de_order_no, :id => "orderNumber")
  text_field(:de_motion_no, :id => "motionNumber")
  text_field(:de_fed_no, :id => "federalRegisterNumber")
  text_field(:de_pub_no, :id => "publicationNumber")
  text_field(:de_action_jacket_no, :id => "actionJacketControlNumber")
  text_field(:de_memorandum_no, :id => "memorandumControlNumber")
  text_field(:de_cbi_no, :id => "cbiNumber")
  text_field(:de_memorandum_no, :id => "memorandumControlNumber")
  text_field(:de_apo_no, :id => "apoNumber")
  text_field(:de_action_req_no, :id => "actionRequestNumber")
  text_field(:de_edis1_no, :id => "edis1ControlNumber")

  text_field(:de_file_by, :id => "filedBy")
  text_field(:de_firm_org, :id => "organization")
  text_field(:de_on_behalf, :id => "onBehalfOf")
  text_field(:de_intake_processed, :id => "intakeProcessedDateEvent")
  text_field(:de_received_by_scanning, :id => "receivedByScanningDateEvent")
  text_field(:de_to_be_verified, :id => "toBeVerifiedDateEvent")
  text_field(:de_to_be_filed, :id => "verifiedToBeFiledDateEvent")
  text_field(:de_filed_date, :id => "filedDateEvent")
  text_field(:de_destroyed, :id => "destroyedDateEvent")
  button(:de_save, :id => "saveDocument")
  text_field(:de_destroyed, :id => "destroyedDateEvent")
  checkbox(:info_ose, :id => "doc.oseAlertFlag1")
  checkbox(:info_doc_color, :id => "doc.colorDocFlag1")
  text_field(:paper_copies_usitc, :id => "copiesDeliveredToUsitc")
  checkbox(:paper_copies_delivered, :id => "doc.copiesDeliveredFlag1")
  text_field(:paper_copies_print, :id => "copiesToPrint")
  text_field(:paper_external_copies_req, :id => "externalCopiesRequired")
  select_list(:paper_external_time, :id => "doc.externalCopiesRequired.timeframe")
  text_field(:inv_info_no, :id => "investigationNumber")
  text_field(:inv_info_title, :id => "investigationTitle")
  text_field(:inv_info_off_no, :id => "officialInvNum")
  text_field(:inv_requested_by, :id => "requestedBy")
  text_area(:basic_doc_notes, :id => "documentNotes")
  select_list(:cover_sheet_exception, :id => "doc.coverSheetFilingExceptionReason")
  text_area(:cover_sheet_detail, :id => "coverSheetFilingExceptionDetail")
  select_list(:cover_sheet_reason, :id => "doc.coverSheetFilingExceptionDecision")

  # Document Actions
  select_list(:doc_action_status, :id => "doc.status")
  select_list(:doc_action_qa_status , :id => "doc.qualityStatusFlag")

#   Audit History
  text_field(:audit_history_search, :xpath => "id('auditHistoryTable_filter')//label//input")
  text_field(:status_change_history, :xpath => "id('statusChangesTable_filter')//label//input")


# Motions and Orders
  hidden_field(:dis_status_checkbox, :xpath => "id('outstandingMotionsList')//tbody//tr[1]//td[1]")


# document list page
#      search_field(:doc_list_search, :class => "form-control input-sm")
#   text_field(:doc_list_search => 'search').set "Test"

  end