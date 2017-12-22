require 'watir-webdriver'
require 'watir-webdriver/wait'

And(/^I go to case management tab$/) do
  on_page(CaseManagementPage).case_management
end

And(/^I navigate to document workflow under case management$/) do
  on_page(CaseManagementPage).doc_workflow
end

When(/^I go to a case manager row$/) do
  sleep 2
  @browser.div(:xpath, "id('caseManagersTable_wrapper')//table//tbody//tr[4]").click
end

Then(/^case manager dashboard should have case manager as "([^"]*)"$/) do |arg|
  sleep(4)
  # @browser.text.include?(arg).should == true
  @browser.text.should =~/#{arg}/
end

And(/^count of pending documents in all assigned investigations as "([^"]*)"$/) do |arg|
  # @browser.text.include?(arg).should == true
  @browser.text.should =~/#{arg}/
end

And(/^count of submitted documents in all assigned investigations as "([^"]*)"$/) do |arg|
  # @browser.text.include?(arg).should == true
  @browser.text.should =~/#{arg}/
end

And(/^count of hold document in all assigned investigations as "([^"]*)"$/) do |arg|
  # @browser.text.include?(arg).should == true
  @browser.text.should =~/#{arg}/
end

And(/^count of in review document in all assigned investigations as "([^"]*)"$/) do |arg|
  # @browser.text.include?(arg).should == true
  @browser.text.should =~/#{arg}/
end

And(/^count of validated documents in all assigned investigations as "([^"]*)"$/) do |arg|
  sleep 1
  # @browser.text.include?(arg).should == true
  @browser.text.should =~/#{arg}/
end

And(/^count of QA unreviewed documents in all assigned investigations as "([^"]*)"$/) do |arg|
  # @browser.text.include?(arg).should == true
  @browser.text.should =~/#{arg}/
end


And(/^count of QA failed documents in all assigned investigations as "([^"]*)"$/) do |arg|
  Watir::Wait.until { @browser.text.should =~/#{arg}/}
end

Then(/^page should have text "([^"]*)"$/) do |arg|
   # sleep(24)
   # @browser.text.should =~/#{arg}/
   sleep 10
   @browser.text.should =~/#{arg}/
  # Watir::Wait.until { @browser.text.should =~/#{arg}/}
end

When(/^I sort by security$/) do
  sleep(3)
  @browser.div(:xpath, "class('dataTables_scrollHeadInner')//table//thead//tr[1]//th[5]").click
end

When(/^I select Investigation tab$/) do
  sleep(2)
  # on_page(CaseManagementPage).inv_tab.click
  # @browser.span(:id, 'button-1016-btnIconEl').click
  @browser.label(:id, 'investigationToggleButtonLabel').click
end

When(/^I navigate to particular case manager$/) do
  sleep 5
  # @browser.tr(:id, "caseManager_12").click
  @browser.link(:xpath, "id('caseManagersTable_wrapper')//table//tbody//tr[2]//td[1]/a").click
  # on_page(CaseManagementPage).case_manager
  # @browser.input(:xpath, "id('apoRelease-inputRow')//td[2]//div//input").click
end

And(/^I search for document "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).doc_list_search = arg
end

When(/^I navigate to particular case managers submitted section$/) do
  sleep(3)
  @browser.link(:xpath, "id('caseManagersTable')//tbody//tr[2]//td[3]/a").click
  # @browser.td(:id, 'submitted_1').link(:id, 'cmlink_status_1').click
end

And(/^I navigate to one of the id for document details$/) do
   sleep 15
  # wait_until_element_present
  @browser.link(:xpath, "id('documentListDataTable')//tbody//tr[1]//td[1]/a").click
end


And(/^I go to investigation dashboard tab$/) do
  pending
end

And(/^I select case manager as "([^"]*)"$/) do |arg|
  sleep 2
  # @browser.select(:id, 'caseManagerSelect').click
  on_page(CaseManagementPage).inv_cs = arg
  # @browser.div(:xpath, "id('caseManagerSelect')//tbody//tr//td[2]//div").click

end

And(/^I go to one of the investigation$/) do
  sleep 3
 @browser.link(:xpath, "id('investigationTable_wrapper')//table//tbody//tr[1]//td[1]//a").click
  # puts "#{x}"
end

And(/^I click on id for document details$/) do
  sleep 5
  @browser.link(:xpath, "id('documentListDataTable')//tbody//tr[1]//td[1]//a").click
end

And(/^I select inactive-cancelled investigations$/) do
  sleep 2
  @browser.label(:id, 'inactiveInvToggleButtonLabel').click
end

And(/^I select active-preinstitution investigations$/) do
  sleep 2
  @browser.label(:id, 'activeInvToggleButtonLabel').click
end

And(/^I go to one of the inactive investigation$/) do
  sleep 3
  @browser.link(:xpath, "id('investigationTable')//tbody//tr[1]//td[1]//a").click
end

And(/^I search for case manager ([^"]*)$/) do |arg|
  sleep 4
  @browser.div(:id, "caseManagersTable_filter").input(:class, "form-control input-sm").send_keys(arg)
end

And(/^I navigate to first result when searched for case manager$/) do
  sleep 4
  @browser.link(:xpath, "id ('caseManagersTable')//tbody//tr[1]//td[1]/a").click
end

And(/^I search for investigation "([^"]*)"$/) do |arg|
  sleep 8
  @browser.div(:id, "documentListDataTable_filter").input(:class, "form-control input-sm").send_keys(arg)
end

And(/^I select first result from document list$/) do
  @browser.link(:xpath, "id ('documentListDataTable')//tbody//tr[1]//td[1]/a").click
  sleep 8
end

# manage investigations
And(/^I navigate to manage investigations under case management$/) do
  on_page(CaseManagementPage).cm_manage_inv
end


Then(/^investigation number should have "([^"]*)"$/) do |arg|
  sleep(6)
  @browser.text.include?(arg).should == true
  # on_page(CaseManagementPage).cm_inv_num = arg
end

And(/^investigation phase should have "([^"]*)"$/) do |arg|
  sleep(5)
  @browser.text.include?(arg).should == true
  # on_page(CaseManagementPage).cm_inv_phase = arg
end

And(/^investigation type should have "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
  # on_page(CaseManagementPage).cm_inv_type = arg
end

And(/^investigation status should have "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
  # on_page(CaseManagementPage).cm_inv_status = arg
end

And(/^investigation title should have "([^"]*)"$/) do |arg|
  sleep (5)
  @browser.text.should =~/#{arg}/
  # on_page(CaseManagementPage).cm_inv_title= arg
end

And(/^official investigation number should have "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
  # on_page(CaseManagementPage).cm_off_inv_num = arg
end

And(/^I navigate to additional metadata$/) do
  on_page(CaseManagementPage).cm_additioanl_metadata
end

And(/^I enter document number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cm_doc_num = arg
end

And(/^I enter pre-institution inv number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cm_pre_institution_inv_num = arg
end

And(/^I enter pre-institution phase as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cm_pre_institution_phase = arg
end

And(/^I navigate to assignments$/) do
  on_page(CaseManagementPage).cm_assignments_tab
end

And(/^I enter primary case manager as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cm_pri_case_manager = arg
end

And(/^I enter secondary case manager as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cm_sec_case_manager = arg
end

And(/^I navigate to disposition$/) do
  on_page(CaseManagementPage).cm_disposition
end

And(/^I enter tentative termination date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cm_tentative_term_date = arg
end

And(/^I enter litigation hold date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cm_litigation_hold_date = arg
end

And(/^I enter notes as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cm_notes = arg
end

And(/^I navigate to audit tool$/) do
  on_page(CaseManagementPage).cm_audit_tool
end

And(/^I save investigation$/) do
  on_page(CaseManagementPage).cm_save_inv
  # @browser.link(:id, "investigationSavebtn").click
end


Then(/^I navigate to home page from results page$/) do
  @browser.link(:id, "homeNavLink").click
  # on_page(CaseManagementPage).cm_home_button
end

And(/^should have "([^"]*)" on landing page$/) do |arg|
  sleep(5)
  # @browser.text.include?(arg).should == true
  @browser.text.should =~/#{arg}/
  # @browser.text.include?('Electronic Document Information System (EDIS)').should == true
end

Then(/^I navigate to find investigating page from results page$/) do
  #on_page(CaseManagementPage).cm_find_inv_button
  @browser.link(:xpath => '//*[@id="main-content-body"]/div/div[1]/ul/li[2]/a').click
end

# create investigation

And(/^I navigate to create investigation$/) do
  sleep 2
  on_page(CaseManagementPage).cm_create_inv
end

And(/^I select "([^"]*)" as investigation type to create investigation$/) do |arg|
  sleep 4
  on_page(CaseManagementPage).create_inv_type = arg
end

And(/^I select Permanent Investigation as investigation status$/) do
  sleep(2)
  @browser.label(:id => 'statusIsPerm').click
end

And(/^I select Pre institution Investigation as investigation status$/) do
  sleep(2)
  @browser.label(:id => 'statusIsPre').click
end

And(/^I enter inv number as "([^"]*)"$/) do |arg|
  sleep(2)
  on_page(CaseManagementPage).create_inv_number = arg
end

And(/^I enter random investigation number$/) do
  sleep(2)
  on_page(CaseManagementPage).create_inv_number = rand(1..1000)
end

And(/^I generate random next number$/) do
  sleep(2)
  on_page(CaseManagementPage).create_inv_num
end

And(/^I select investigation phase value as "([^"]*)"$/) do |arg|
  sleep 4
  on_page(CaseManagementPage).create_inv_phase = arg
 end

And(/^I enter "([^"]*)" as investigation title$/) do |arg|
  sleep(2)
  on_page(CaseManagementPage).create_inv_title = arg
end

And(/^I finish creating an investigation$/) do
  on_page(CaseManagementPage).create_inv_finish_element
end

And(/^I select "([^"]*)" as investigation category to create investigation$/) do |arg|
  @browser.select(:class, 'form-control').option(:value, '104')
end

# create investigation
And(/^I create investigation$/) do
  on_page(CaseManagementPage).create_inv_button
end

And(/^I select investigation_type as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).create_inv_type = arg
end

And(/^I submit and continue to next page$/) do
  on_page(CaseManagementPage).create_save
end

And(/^I select investigation_status as "Permanent Investigation"$/) do
  # sleep(1)
  on_page(CaseManagementPage).create_invstatus_element.click
end

And(/^I enter investigation_number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).create_invnum = arg
end

And(/^I select investigation_phase as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).create_invphase = arg
end

And(/^I enter investigation_title as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).create_invtitle = arg
end


And(/^I finish investigation$/) do
  on_page(CaseManagementPage).create_finish_button
end

And(/^I choose investigation_category as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).create_invcategory = arg
end

# Document list page
And(/^search for "([^"]*)" in search form filed$/) do |arg|
  sleep(4)
  @browser.div(:id, "documentListDataTable_filter").input(:class, "form-control input-sm").send_keys(arg)
end


And(/^I navigate to document editor page by clicking on id$/) do
  sleep(8)
  # @browser.link(:href, "/edis3-ui/casemgmt/document/549666.html").click
  @browser.link(:xpath, "id('documentListDataTable')//tbody//tr[1]//td[1]/a").click
end

# document editor
And(/^I select document editor security as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_security= arg
end

And(/^I check Filed as Public version$/) do
  on_page(CaseManagementPage).de_fpv_element.click
  # @browser.checkbox(:id => "doc.publicVersionOfConfidentialDoc1").click
end

And(/^I check APO Release$/) do
  on_page(CaseManagementPage).de_apo_element.click
  # @browser.checkbox(:id => "doc.apoReleaseFlag1").click
end

And(/^I check Party served$/) do
  on_page(CaseManagementPage).de_ps_element.click
  # @browser.checkbox(:id => "doc.partyServedFlag1").click
end

And(/^Party served should be checked$/) do
  on_page(CaseManagementPage).de_ps_element.selected? == true
  # @browser.checkbox(:id => "doc.partyServedFlag1").click
end

And(/^I select editor document type as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_doc_type = arg
end

And(/^I enter editor document title as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_doc_title = arg
end

And(/^I enter secondary document title as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_sec_doc_title = arg
end

And(/^I select special processing as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_sprocessing = arg
end

And(/^I enter document date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_doc_date = arg
end

And(/^I enter official received date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_off_received_date = arg
end

And(/^I add attachment$/) do
  sleep 2
  # @browser.div(:class, "panel-body").link(:class, "btn btn-default pull-right").click
  @browser.link(:xpath, "id('attachmentList')//div[2]//a").click
end

And(/^I enter attachment title as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_att_title = arg
end

And(/^I enter docket notes as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_doc_notes = arg
end

And(/^attach file (.*) into attach file$/) do |file_name|
  on_page(CaseManagementPage).de_attach_file = Dir::pwd + '/features/attachment_docs/' + file_name
end

And(/^update file (.*) into attach file$/) do |file_name|
  on_page(CaseManagementPage).de_update_file = Dir::pwd + '/features/attachment_docs/' + file_name
end

And(/^I add the file$/) do
  on_page(CaseManagementPage).de_add_file
end

And(/^I search for attachment "([^"]*)"$/) do |arg|
  sleep(2)
  on_page(CaseManagementPage).attachment_search = arg
end

And(/^I edit attached document$/) do
  # @browser.span(:class, 'glyphicon glyphicon-edit').click
  @browser.link(:xpath, "id('attachmentListDataTable_wrapper')//table//tbody//tr[2]//td[8]//a").click
end

And(/^I edit title as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_title = arg
end

And(/^I edit docket notes as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_edit = arg
end

And(/^I update the file$/) do
  sleep(2)
  @browser.button(:id, 'updateAttachment').click
end

And(/^I enter investigation number or title as "([^"]*)"$/) do |arg|
  sleep 4
  on_page(CaseManagementPage).de_change_inv_title = arg
  # @browser.span(:xpath, "id('investigationFinder')//span").click

  # @browser.div(:class, "tt-dataset tt-dataset-investigations").div(:class, "tt-suggestion tt-selectable").option(:text => "337-900 - Violation: Certain Navigation Products, Including GPS Devices, Navigation and Display Systems, Radar Systems, Navigational Aids, Mapping Systems and Related Software; Inv. No. 337-TA-900 (Active)").click
  # if x.text.include?("337-900 - Violation: Certain Navigation Products, Including GPS Devices, Navigation and Display Systems, Radar Systems, Navigational Aids, Mapping Systems and Related Software; Inv. No. 337-TA-900 (Active)") then
  #   x.select
  # end
  sleep 3
end

# And(/^I enter investigation number or title "([^"]*)"$/) do |arg|
#   # sleep 2
#   # on_page(CaseManagementPage).de_change_inv_title = arg
#   # @browser.div(:class, "tt-menu tt-open").div(:class, "tt-dataset tt-dataset-investigations").div(:class, "tt-suggestion tt-selectable").click
#   sleep 4
#   on_page(CaseManagementPage).de_change_inv_title = arg
#   @browser.div(:class, "tt-dataset tt-dataset-investigations").div(:class, "tt-suggestion tt-selectable").click
#
#   # @browser.div(:class, 'tt-dataset tt-dataset-investigations').div(:class, 'tt-suggestion tt-selectable').click
#   # @browser.div(:xpath, "id('pull-right form-inline')//span[2]//div[2]//div[1]").click
# end

And(/^I change investigation$/) do
   @browser.button(:id, "changeInv").click
  # on_page(CaseManagementPage).de_change_inv_element.click
end

And(/^I click new title to change title$/) do
  @browser.div(:class, "tt-suggestion tt-selectable").click
end

And(/^I enter order number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_order_no = arg
end

And(/^I enter motion number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_motion_no = arg
end

And(/^I enter federal registration number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_fed_no = arg
end

And(/^I enter coding publication number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_pub_no = arg
end

And(/^I enter action jacket control number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_action_jacket_no = arg
end

And(/^I enter coding memorandum control number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_memorandum_no = arg
end

And(/^I enter cbi number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_cbi_no = arg
end

And(/^I enter coding apo number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_apo_no = arg
end

And(/^I enter coding action request number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_action_req_no = arg
end

And(/^I enter edis1 control number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_edis1_no = arg
end


#     And I enter cbi number as "5"
# And I enter coding apo number as "5"
# And I enter coding action request number as "5"
# And I enter edis1 control number as "5"


And(/^I enter file by as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_file_by = arg
end

And(/^I enter firm_organization as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_firm_org = arg
end

And(/^I enter on\-behalf of as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_on_behalf = arg
end

And(/^I enter intake processed date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_intake_processed = arg
end

And(/^I enter received by scanning date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_received_by_scanning = arg
end

And(/^I enter to be verified as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_to_be_verified = arg
end

And(/^I enter verified or to be filed date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_to_be_filed = arg
end

And(/^I enter filed date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_filed_date = arg
end

And(/^I enter destroyed date as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_destroyed = arg
end

And(/^I delete attached file by selecting "Delete"$/) do
  @browser.div(:xpath, "id('attachmentListDataTable_wrapper')//table//tbody//tr[2]//td[9]//div").click
end

And(/^I delete second attached file by selecting "Delete"$/) do
  @browser.div(:xpath, "id('attachmentListDataTable_wrapper')//table//tbody//tr[3]//td[9]//div").click
end

And(/^I save document editor changes$/) do
  on_page(CaseManagementPage).de_save
end

And(/^I navigate to investigation information$/) do
  sleep 2
  @browser.link(:href, "#investigationInfo").click
end

And(/^I view in investigation editor$/) do
  @browser.div(:class, "pull-left").link(:class, "btn btn-primary").click
end

And(/^I change investigation info number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).inv_info_no = arg
end

And(/^I change investigation phase as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_inv_phase = arg
end

And(/^I change investigation status as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).de_inv_status = arg
end

And(/^I change investigation title "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).inv_info_title = arg
end

And(/^I change official investigation number "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).inv_info_off_no = arg
end

And(/^I change requested by "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).inv_requested_by = arg
end

And(/^I save investigation info$/) do
  @browser.link(:id, 'investigationSavebtn').click
  sleep 4
end

And(/^I navigate to coding information$/) do
  @browser.link(:href, "#codingInfo").click
end

And(/^I navigate to processing information$/) do
  @browser.link(:href, "#processingInfo").click
end

And(/^I navigate to filer information$/) do
  @browser.link(:href, "#filerInfo").click
end

And(/^I navigate to date event history$/) do
  @browser.link(:href, "#dateEventHistory").click
end

And(/^I navigate to attachment list$/) do
  @browser.link(:href, "#attachmentList").click
end

And(/^I navigate to audit history$/) do
  @browser.link(:href, "#auditHistory").click
end

And(/^I navigate to primary metadata$/) do
  @browser.link(:href, "#primaryMetadata").click
end

And(/^I navigate to basic info$/) do
  @browser.h4(:class, "panel-title").link(:href, "#basicProcessingInfo").click
end

And(/^I check OSE alert$/) do
  # @browser.div(:class, "form-group checkbox").label(:class, "control-label")_element.click
  on_page(CaseManagementPage).info_ose_element.click
  #  @browser.input(:id, "doc.oseAlertFlag1")_element.click
end

And(/^I check document contains color$/) do
  # @browser.input(:id, "doc.colorDocFlag1")_element.click
  on_page(CaseManagementPage).info_doc_color_element.click
end

And(/^I enter document notes as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).basic_doc_notes = arg
end

And(/^I navigate to paper copies information$/) do
  @browser.link(:href, "#copiesDeliveredData").click
end

And(/^I enter copies delivered to usitc as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).paper_copies_usitc = arg
end

And(/^I check copied delivered$/) do
  on_page(CaseManagementPage).paper_copies_delivered_element.click
end

And(/^I enter copies to print as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).paper_copies_print = arg
end

And(/^I enter external copies required as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).paper_external_copies_req = arg
end

And(/^I select external copies required delivery timeframe as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).paper_external_time = arg
end

And(/^I navigate to Cover sheet filing exception$/) do
  @browser.link(:href, "#coverSheetFilingException").click
end

And(/^I select cover sheet exception reason as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cover_sheet_exception = arg
end

And(/^I enter cover sheet exception detail as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cover_sheet_detail = arg
end

And(/^I select cover sheet reason as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).cover_sheet_reason = arg
end


And(/^I navigate to document actions$/) do
  @browser.link(:href, "#documentActions").click
end

And(/^I enable document status$/) do
  @browser.link(:id, "docStatusEnabler").click
end

And(/^I select document status as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).doc_action_status = arg
end

And(/^I enable qa status$/) do
  @browser.link(:id, "qaStatusEnabler").click
end

And(/^I select qa status as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).doc_action_qa_status = arg
end

And(/^I search for "([^"]*)" in audit trail tab/) do |arg|
  on_page(CaseManagementPage).audit_history_search = arg
end

And(/^I navigate to status change history$/) do
  @browser.link(:id, "auditHistoryStatusChangesTab").click
end

And(/^I search for "([^"]*)" in status change history tab$/) do |arg|
  on_page(CaseManagementPage).status_change_history = arg
end


And(/^I update created investigation phase to "([^"]*)"$/) do |arg|
  # @browser.select(:class, 'form-control').option(:value, '7')
  on_page(CaseManagementPage).update_create_inv_phase = arg
end

And(/^I update created investigation type to "([^"]*)"$/) do |arg|
   on_page(CaseManagementPage).update_create_inv_type = arg
end

And(/^I update created investigation status to "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).update_create_inv_status = arg
  # @browser.select(:id => 'invStatus', :value => '0')
end

And(/^I update created investigation title to "([^"]*)"$/) do |arg|
  sleep 2
  on_page(CaseManagementPage).update_create_inv_title = arg
end

And(/^I search for "([^"]*)" in audit tool$/) do |arg|
  @browser.div(:id, "invesAuditTable_filter").input(:class, "form-control input-sm").send_keys(arg)
end

# APO Release
And(/^I navigate to apo release$/) do
  @browser.link(:id, "apoReleaseInvNavLink").click
end

# Motion and Order
And(/^I select "([^"]*)" as document type on document editor page$/) do |doc_type|
  sleep 8
  doc_list = @browser.select(:id, "doc.docType")
  # p "#{doc_list.options}"
  doc_list.options.each do |list|
    # p "#{list.text}"
    if list.text == doc_type && !list.selected? then
      on_page(CaseManagementPage).de_doc_type = doc_type
    end
  end
end


And(/^I generate motion number$/) do
  sleep 4
  @browser.button(:id, "generateMotionNumber").click
end

And(/^select motion status as "([^"]*)"$/) do |motion_status|
  sleep 3
  @browser.select(:id, "doc.motionStatus").send_keys(motion_status)
end

# Motions And Orders
And(/^I select the first motions that will be disposed of by this order by checking the box$/) do
   sleep 25
  @browser.checkbox(:id, "motions0.selected1").click
end

And(/^I select the first disposition status on submission page as "([^"]*)"$/) do |disposition_status|
  sleep 2
  @browser.select(:id, "motions0.edisDocument.motionStatus").send_keys(disposition_status)
end

And(/^I select the second motions that will be disposed of by this order by checking the box$/) do
  sleep 25
  @browser.checkbox(:id, "motions1.selected1").click
end

And(/^I select the second disposition status on submission page as "([^"]*)"$/) do |disposition_status|
  sleep 2
  @browser.select(:id, "motions1.edisDocument.motionStatus").send_keys(disposition_status)
end

And(/^I select the third motions that will be disposed of by this order by checking the box$/) do
  sleep 25
  @browser.checkbox(:id, "motions2.selected1").click
end

And(/^I select the third disposition status on submission page as "([^"]*)"$/) do |disposition_status|
  sleep 2
  @browser.select(:id, "motions2.edisDocument.motionStatus").send_keys(disposition_status)
end

And(/^I select the fourth motions that will be disposed of by this order by checking the box$/) do
  sleep 25
  @browser.checkbox(:id, "motions3.selected1").click
end

And(/^I select the fourth disposition status on submission page as "([^"]*)"$/) do |disposition_status|
  sleep 2
  @browser.select(:id, "motions3.edisDocument.motionStatus").send_keys(disposition_status)
end


And(/^I confirm submission of investigation$/) do
  on_page(CaseManagementPage).confirm_submission
end