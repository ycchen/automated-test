class DocketsDesk
   include PageObject

  link(:doc_desk, :id => "docketsDeskMenu")
  link(:accept_doc, :id => "acceptDocumentsNavLink")
  text_field(:accept_doc_id, :id => "id")
  text_field(:accept_paper_copies, :id => "copiesDeliveredToUsitc")
  button(:retrieve, :id => "retrieveMetaData")
  button(:confirm_doc, :id => "acceptDocument")

#track documents
  link(:track_doc, :id => "trackDocumentsNavLink")
  select_list(:track_loc, :id => "trackingLocation")
  text_field(:track_doc_id, :id => "edisDocument.id")
  button(:track_submit, :id => "submitDocument")
end