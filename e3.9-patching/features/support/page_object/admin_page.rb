class AdminPage
  include PageObject
  link(:admin_tab, :id => "PageLink_3")
  link(:admin_user_accounts, :id => "PageLink_9")
  text_field(:admin_user_id, :id => "userIdField")
  button(:admin_find_user, :id => "findUserById")

# Maintain Firm / Organizations
  link(:admin_main_firm_org, :id => "PageLink_10")
  link(:admin_create_firm_org, :id => "PageLink_9")
  text_field(:admin_firm_name, :id => "firmNameField")
  text_field(:admin_firm_add, :id => "address1Field")
  text_field(:admin_firm_city, :id => "cityField")
  select_list(:admin_firm_state, :id => "stateSelectModel")
  text_field(:admin_firm_zip, :id => "zipField")
  select_list(:admin_firm_country, :id => "countrySelectModel")
  text_field(:admin_firm_email, :id => "emailField")
  text_field(:admin_firm_phone, :id => "telephoneField")
  button(:admin_firm_save, :id => "saveSubmit")

# Manage Authority Groups
  link(:admin_manage_authority_groups, :id => "PageLink_11")
  select_list(:admin_authority_group, :id => "groupSelectionModel")
  button(:admin_load_group, :id => "groupSelectionSubmit")
  select_list(:admin_available, :id => "groupAuthoritiesPalette_0_avail")
  link(:admin_select, :id => "Any_0")
  button(:admin_save_group, :id => "groupAssignmentSubmit")
  text_field(:admin_create_group, :id => "newGroupName")
  button(:admin_create_group, :id => "createGroupSubmit")

# Manage Notices
  link(:admin_manage_notice, :id => "PageLink_12")
  select_list(:admin_key, :id => "key")
  select_list(:admin_request_source, :id => "requestSource")
  text_field(:admin_text, :id => "text")
  button(:admin_add_notice, :id => "addNew")
  link(:admin_next_page, :id => "linkPage")
  link(:admin_delete, :id => "deleteLink_0")

#  Manage Investigation Type - Document Types
  link(:admin_manage_inves_type, :id => "PageLink_13")
  select_list(:admin_inv_type, :id => "invTypeSelection")
  button(:load_doc_type, :id => "loadInvType")
  select_list(:admin_doc_type,:id => "docTypeSelection")
  button(:load_metadata, :id => "loadMetadata")
  button(:manage_inv_type_save, :id => "save")
  text_field(:externalCopies, :id => "detailTypeExternalCopies")

# Manage Special Processing Types
  link(:manage_special_processing_type, :id => "PageLink_14")
  select_list(:special_processing, :id => "specialProcessingSelection")
  button(:load_special_processing, :id => "loadSpecialProcessing")
  button(:special_processing_save, :id => "save")
  text_field(:number_of_copies, :id => "specialProcessingCopiesField")


end