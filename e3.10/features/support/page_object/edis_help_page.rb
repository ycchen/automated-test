class HelpPage
 include PageObject

  link(:help,:id => "helpMenu")
  link(:whats_new_link, :href => "/edis3-ui/help/whatsNew.html")
  link(:help_doc_library, :href => "/edis3-ui/help/index.html")
  link(:who_should_register, :href => "http://www.usitc.gov/docket_services/documents/EDIS3-WhoShouldRegister.pdf")
  link(:edis3_user_guide, :href => "http://itc-central.usitc.gov/intranet/edis/EDIS3UserGuide-Internal.pdf")
  link(:edis3_cd_submission_guide, :href => "http://www.usitc.gov/docket_services/documents/EDIS3UserGuide-CDSubmission.pdf")
  link(:edis3_web_service_guide, :href => "http://www.usitc.gov/docket_services/documents/EDIS3WebServiceGuide.pdf")
  link(:faqs,:href => "http://www.usitc.gov/intellectual_property/documents/337_faqs.pdf")
  link(:handbook_on_filing_procedures, :href => "http://www.usitc.gov/secretary/documents/handbook_on_filing_procedures.pdf")
  link(:guidance_on_copy_requirements, :href => "http://www.usitc.gov/secretary/documents/copy_requirement_guidance.pdf")
  link(:requesting_a_waiver_to_electronic_filing, :href => "http://www.usitc.gov/secretary/documents/waiver_guidance.pdf")
  paragraph(:telephone_no, :class => "lead")
  paragraph(:text_on_page, :xpath => "//div[@id='main-content']/section/p")

end