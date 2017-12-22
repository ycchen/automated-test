class InvMgmtPage
  include PageObject

    link(:inv_mgmt, :id => "PageLink_1")
    link(:maintain_inv_docs, :id => "PageLink_10")
    select_list(:case_manager_name, :id => "priCaseManagerDataModel")
    link(:first_inv_no_link, :id => "externalLink_5")
    button(:filter,:id => "investigationFilterSubmit")
    link(:first_doc_id, :id => "externalLink")


    link(:maintain_inv_data, :id => "PageLink_11")
    link(:inv_first_link, :id => "externalLink")
    link(:view_case_manager_dashboard, :id => "PageLink_9")
    text_field(:inv_mgmt_doc_id, :id => "findByDocIdInput")
    button(:doc_id_go, :id => "findByDocIdSubmit")
    select_list(:search_case_manager_name, :id => "priCaseManagerDataModel")
    select_list(:inv_phases, :name => "searchBeanForm_investigationPhases_BeanField")
    select_list(:inv_types, :name => "searchBeanForm_investigationTypes_BeanField")
    link(:create_new_inv, :id => "PageLink_12")
    select_list(:new_inv_type, :id => "investigationTypeSelectModel")
    select_list(:inv_category, :id => "investigationPrefixSelectModel")
    radio_button(:per_inv_status, :name => "investigationStatusRadioGroup")
    text_field(:new_inv_num, :id => "invSuffixField")
    button(:save_new_inv, :id => "submitButton")

    radio_button(:pre_inv_status, :id => "investigationStatusRadioGroup1")
    button(:next_doc_number, :id => "nextDocketNumber")
    select_list(:new_inv_phase, :name => "investigationPhaseSelectModel")

    text_field(:new_inv_title, :id => "investigationTitle")
    text_field(:action_jacket_control_num, :id => "actionJacketControlNumberTextField")

#   APO
    text_field(:apo_inv_num, :id => "investigationNumber")
    select_list(:apo_inv_phase, :name => "searchBeanForm_investigationPhases_BeanField")
    select_list(:apo_inv_types, :name => "searchBeanForm_investigationTypes_BeanField")
end