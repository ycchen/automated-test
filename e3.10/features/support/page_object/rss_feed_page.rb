class RssFeed
  include PageObject
  select_list(:rss_inv_type, :id => "investigationTypeId")
  # button(:rss_inv_type_remove, :name => "removeInvestigationType")
  select_list(:rss_add_inv_type, :id => "investigationTypes")
  select_list(:rss_add_inv_phase, :id => "investigationPhases")
  select_list(:rss_add_inv_status, :id => "investigationStatus")
  radio_button(:doc_type_radio_button, :id => "rssFeedInvestigationTypeList0.allDocType2")
  text_field(:add_edit_inv_no, :id => "investigationNumber")
  link(:developer, :id => "developerMenu")
  link(:rss_feed, :id => "rssLink")



end