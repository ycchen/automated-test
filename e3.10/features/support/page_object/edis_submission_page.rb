class Submission_Page
   include PageObject

   link(:sub_page, :id => "submissionMenu")
   link(:submit_continue, :id => "next_btn")
   select_list(:sub_inv_type, :id => "investigationType")
   select_list(:sub_doc_type, :id => "documentType")
   text_field(:sub_title, :id=> "documentTitle")
   text_field(:sub_behalf, :id=> "onBehalfOf")
   file_field(:attach, :id => "upload")
   text_field(:file_text, :id => "titleId")
   select_list(:sub_inv_phase, :id => "investigationPhase")
   select_list(:sub_inv_entries, :name => "invesResultsTable_length")
   button(:sub_previous, :id => "previous")
   button(:sub_waiver, :class => "btn btn-warning start")
   select_list(:sec_level, :name => "securityLevelSelect")
   button(:submit, :class => "next submit")
   button(:confirm, :class => "btn btn-primary btn-ok")

end