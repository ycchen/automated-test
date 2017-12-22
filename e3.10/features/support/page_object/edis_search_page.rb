class SearchPage
  include PageObject

    link(:search_page, :id => "searchMenu")
    link(:inv_page, :id => "invSearchNavLink")
    text_field(:inv_num, :id => "invNumFilterField-inputEl")
    # select_list(:inv_phase, :id => "invPhaseFilterField-inputEl")
    #div(:phase_button, :id => "ext-gen1074")
    text_field(:inv_phase, :id => "invPhaseFilterField-inputEl")
    text_field(:inv_type, :id => "invTypeFilterField-inputEl")
    text_field(:inv_status, :id => "invStatusFilterField-inputEl")

    text_field(:inv_title, :id => "invTitleFilterField-inputEl")
    link(:inv_search, :id => "button-1013")
    button(:inv_reset, :id => "button-1012-btnInnerEl")


#Advanced Search
  link(:adv_search, :id => "advancedSearchNavLink")
  text_area(:keyword, :id => "keywords-inputEl")
   # img(:inv_toggle, :xpath => "//*[@id='investigationDataPanel_header-body']//img")
  # text_field(:adv_inv_no, :xpath => "//*[@id='invNumber-inputEl']")
   text_field(:adv_inv_no, :id => "invNumber-inputEl")
  text_field(:adv_title, :id => "invTitle-inputEl")
  text_field(:adv_security, :id => "security-inputEl")
  text_field(:adv_type, :id => "docType-inputEl")
  text_field(:adv_doc_id, :id => "docId-inputEl")
  text_field(:adv_doc_title, :id => "docTitle-inputEl")

#Document Index Data
  text_field(:action_jacket_ctr_no, :id => "actionJacketControlNum-inputEl")
  text_field(:cbi_no, :id => "cbiNum-inputEl")
  text_field(:pub_no, :id => "publicationNum-inputEl")
  text_field(:mem_ctr_no, :id => "memorandumControlNum-inputEl")
  text_field(:apo_no, :id => "apoNum-inputEl")
  text_field(:action_req_no, :id => "actionRequestNum-inputEl")


#Submitter Data
  text_field(:sub_filed_by, :id => "filedBy-inputEl")
  text_field(:sub_on_behalf_of, :id => "onBehalfOf-inputEl")

#Date Data
 text_field(:off_received_from_date, :id => "offRecdFromDate-inputEl")
 text_field(:off_received_to_date, :id => "offRecdToDate-inputEl")
  text_field(:document_from_date, :id => "docDateFromDate-inputEl")
  text_field(:document_to_date, :id => "docDateToDate-inputEl")

#Save current search
  text_field(:saved_search_name, :id => "messagebox-1001-textfield-inputEl")


end