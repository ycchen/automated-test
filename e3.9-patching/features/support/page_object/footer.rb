class FooterPage
  include PageObject

  link(:info_first_link, :text => "What's New in EDIS")
  link(:info_second_link, :text => "Handbook on Filing")
  link(:info_third_link, :text => "Guidance on Copy Rqmts.")
  link(:info_fourth_link, :text => "E-Filing Waiver Guidance")

#  help
  link(:help_first_link, :text => "EDIS 3 User Guide")
  link(:help_second_link, :text => "EDIS 3 Web Service Guide")
  link(:help_third_link, :id => "PageLink_12")

#  quick_links
  link(:quick_links_first_link, :id=> "PageLink_13")
  link(:quick_links_second_link, :id => "externalLink_0")

end