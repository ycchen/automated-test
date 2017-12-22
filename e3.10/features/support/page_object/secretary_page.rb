class Secretary
  include PageObject

  link(:secretary_tab, :id => "secretaryMenu")
  link(:cover_sheet, :id => "coverSheetFilingExceptionNavLink")
  text_field(:cover_sheet_doc_id, :id => "id")
  button(:retrieve_data, :id => "retrieveMetaData")
  button(:cover_sheet_approve, :id => "approve")
  button(:cover_sheet_deny, :id => "deny")

end