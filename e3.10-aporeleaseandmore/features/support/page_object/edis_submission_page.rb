class Submission_Page
   include PageObject

   select_list(:inv_type, :id => "investigationType")
   button(:next, :class => "next")
   link(:submission_tab, :id => "submissionMenu")
   button(:save_and_continue, :id => "next_btn")
   label(:no, :id => "notNewRequestButton")
   select_list(:doc_type, :id => "documentType")
   text_field(:doc_title, :id=> "documentTitle")
   text_field(:doc_behalf, :id=> "onBehalfOf")
   file_field(:attach, :id => "upload")
   text_field(:file_text, :id => "editableSections0.section.title")
   text_field(:file_text1, :id => "editableSections1.section.title")
   button(:submit, :class => "next submit")
   button(:confirm, :class => "btn btn-primary btn-ok")
   select_list(:security_level, :id => "securityLevelSelect")
   link(:new_request_card, :id => "new_request")
   link(:security_level_card, :id => "security_level")
   link(:paper_copies_required_card, :id => "paper_copies_required")
   link(:document_information_card, :id => "document_information")
   link(:inv_type_card, :id => "investigation_type")
   button(:cancel, :id => "cancel-termination")
   select_list(:inv_phase, :id => "investigationPhase")
   button(:streamlineIvestigation, :id => "enter-investigation")
   text_field(:investigationNumber, :id => "investigationNumber")
   select_list(:investigationPhase1, :id => "investigationPhase")
   link(:fileAnother, :id => "fileAnotherDocument")
end