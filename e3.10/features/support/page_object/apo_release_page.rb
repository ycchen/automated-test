class ApoReleasePage
  include PageObject
  checkbox(:apo_release, :id => "finalApoRelease0.selected1")
  checkbox(:apo_release1, :id => "finalApoRelease1.selected1")
  checkbox(:apo_release2, :id => "finalApoRelease2.selected1")
  checkbox(:apo_release_uncheck, :id => "apoReleaseFlag")
  checkbox(:security_uncheck, :id => "confidentialFlag")
  checkbox(:status_uncheck, :id => "validatedFlag")
  # button(:filter, :name => "createApoRelease")
  text_field(:release_title, :id => "draftApoRelease.releaseTitle")
  text_field(:release_media, :id => "numCopies")
  checkbox(:apo_doc_list_sel, :id => "eligibleDocumentList0.selected1")
  select_list(:apo_doc_status, :id => "doc.status")
  select_list(:apo_release_phase, :id => "invPhase")
  checkbox(:apo_second_doc_list_sel, :id => "eligibleDocumentList1.selected1")
  checkbox(:apo_third_doc_list_sel, :id => "eligibleDocumentList2.selected1")
  select_list(:apo_entries, :name => "invesResultsTable_length")



end