And(/^I go to case management tab$/) do
  on_page(CaseManagementPage).case_management_tab
end

And(/^I Generate APO Release$/) do
  on_page(CaseManagementPage).generate_apo_release
end

And(/^I enter Investigation Number as "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).investigation_number = arg
end

And(/^I select "([^"]*)" as Investigation Phase$/) do |arg|
  on_page(CaseManagementPage).investigation_phase = arg
end

And(/^I select "([^"]*)" as Investigation Type$/) do |arg|
  on_page(CaseManagementPage).investigation_type = arg
end

And(/^I Find Investigation$/) do
  on_page(CaseManagementPage).find_investigation
  sleep 4
end


And(/^I click on Inv Number$/) do
  sleep 2
  on_page(CaseManagementPage).firstInvestigation
  sleep 2
end

And(/^I click Reprint$/) do
  on_page(CaseManagementPage).reprint
end

And(/^I click Create New Release$/) do
  on_page(CaseManagementPage).create_new_release
end

And(/^I click Submit Release$/) do
  on_page(CaseManagementPage).submit_release
end

And(/^I switch flag for APO Release$/) do
  #on_page(CaseManagementPage).apo_release_cb
  @browser.checkbox(:id => "apoReleaseFlag").click
end

And(/^I switch flag for Status$/) do
  @browser.checkbox(:id => "validatedFlag").click
end

And(/^I switch flag for Security$/) do
  @browser.checkbox(:id => "confidentialFlag").click
end

And(/^I click Filter$/) do
  on_page(CaseManagementPage).filter
end

And(/^I grab Document number from html$/) do
    docNumber =   @browser.span(:id => "documentNumber").text
    docNumberFile = File.new("Doc Number", "w")
    docNumberFile.write(docNumber)
    docNumberFile.close()
end

And(/^I click Doc ID$/) do
  sleep 2
  readDocNumber = File.new("Doc Number", "r")
  while (!(line = readDocNumber.gets))
    puts line
  end
  @browser.link(:xpath => "//*[@id='" + line.to_s + "']").click
  sleep 2
end

And(/^I check APO Release$/) do
  on_page(CaseManagementPage).apo_release
end

Then(/^I click Enable status$/) do
  on_page(CaseManagementPage).enable_status
end

And(/^I select "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).enable_status = arg
end

And(/^I Save and Return$/) do
  on_page(CaseManagementPage).enable_status
end

Then(/^I select Doc ID for release$/) do
  on_page(CaseManagementPage).sel_for_release
end

And(/^I click Return to Release Info$/) do
  on_page(CaseManagementPage).return_to_release_info
end

And(/^I delete Draft Release$/) do
  on_page(CaseManagementPage).delete_draft_release
end

And(/^I click Modify Doc List$/) do
  on_page(CaseManagementPage).modify_doc_list
end

And(/^I add relese title "([^"]*)"$/) do |arg|
  on_page(CaseManagementPage).release_title = arg
end

And(/^I Finalize$/) do
  on_page(CaseManagementPage).finalize
end

And(/^I cancel APO Release$/) do
  @broswer.button(:xpath => "//*[@id='modal-finalize']/div/div/div[3]/button").click
end

And(/^I confirm APO Release$/) do
  on_page(CaseManagementPage).confirm_finalize
end