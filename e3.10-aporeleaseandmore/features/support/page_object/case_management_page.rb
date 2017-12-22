class CaseManagementPage
  include PageObject

    link(:case_management_tab, :id => "caseManagementMenu")
    link(:generate_apo_release, :id => "apoReleaseInvNavLink")

  #Search for Investigation
    text_field(:investigation_number, :id => "invNumber")
    select_list(:investigation_phase, :id => "invPhase")
    select_list(:investigation_type, :id => "invType")
    button(:find_investigation, :id => "findInvestigationbtn")
    link(:firstInvestigation, :name => "investigation_list")
    button(:reprint, :id => "reprintFinalApoRelease")
    button(:create_new_release, :id => "createApoRelease")
    button(:submit_release, :id => "submitApoReleaseBtn")
    checkbox(:not_in_prior_release_cb, :id => "priorReleaseFlag")
    button(:filter, :name => "filterEligibleDocuments")
    checkbox(:apo_release, :id => "doc.apoReleaseFlag1")
    link(:enable_status, :id => "docStatusEnabler")
    select_list(:document_status, :id => "doc.status")
    button(:save_and_continue, :name => "saveDocument")
    checkbox(:sel_for_release, :id => "eligibleDocumentList0.selected1")
    button(:finalize, :id => "showFinalizeModal")
    button(:modify_doc_list, :name => "editDraftApoRelease")
    button(:return_to_release_info, :name => "returnToReleaseSummary")
    button(:create_releaes_media, :id => "showCreateReleaseMedia")
    button(:delete_draft_release, :id => "deleteDraftApoRelease")
    text_field(:release_title, :id => "draftApoRelease.releaseTitle")
    button(:confirm_finalize, :name => "finalizeApoRelease")
end