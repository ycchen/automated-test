#require "watir-webdriver/extensions/alerts"
#require "rautomation"

Given /^I am on EDIS home page$/ do
  visit_page(EdisPage)
end

Given(/^I am on EDIS external home page$/) do
  visit_page(ExternalEdisPage)
end

And /^I navigate to login screen$/ do
  on_page(EdisPage).home_page_login
end

And(/^I enter username "([^"]*)"$/) do |arg|
  on_page(EdisPage).username = arg
end

And(/^I enter password "([^"]*)"$/) do |pw|
  on_page(EdisPage).password = pw
end


And(/^I click Agree and Submit$/) do
  on_page(EdisPage).login
end

Then(/^I logout$/) do
  on_page(EdisPage).logout
end

Then(/^I should see "([^"]*)" on the page$/) do |text|
  sleep 4
  @browser.text.should =~/#{text}/
end


Given /^I navigate to edis page$/ do
  step %{I am on EDIS home page}
  step %{I navigate to login screen}
  #step %{I enter username "InternalUser"} #internal
  step %{I enter username "bcaesar"} #ADMIN
  step %{I enter password "Testuser1234!"}
  step %{I click Agree and Submit}
end

Given /^I navigate to edis page for external$/ do
  step %{I am on EDIS external home page}
  step %{I navigate to login screen}
  step %{I enter username "ExternalUser"} #external
  step %{I enter password "Testuser1234!"}
  step %{I click Agree and Submit}
end

#   Submission Tab
And /^I go to submission tab$/ do
  on_page(Submission_Page).submission_tab
end

And(/^I click Save and Continue$/) do
  on_page(Submission_Page).save_and_continue
  sleep 2
end

And(/^I select "([^"]*)" as investigation type for filing$/) do |arg|
  on_page(Submission_Page).inv_type = arg
end

And(/^I click Save and Continue for next card$/) do
  on_page(Submission_Page).next
  sleep 2
end

And(/^I click No$/) do
  @browser.label(:id => "notNewRequestButton").click
  sleep 1
end

And(/^I click Yes$/) do
  @browser.label(:id => "newRequestButton").click
  sleep 1
end

And(/^I click No on Petition Acknowledgement$/) do
  @browser.label(:id => "acknowlegePetitionNoButton").click
  sleep 1
end

And(/^I click Cancel$/) do
  on_page(Submission_Page).cancel
  sleep 2
end

And(/^I click Yes on Petition Acknowledgement$/) do
  @browser.label(:id => "acknowlegePetitionYesButton").click
  sleep 1
end

Then(/^I click the first investigation$/) do
  sleep 3
  @browser.table(:id => "701-457").click
end

And(/^I select "([^"]*)" as document type for filing$/) do |arg|
  sleep 3
  on_page(Submission_Page).doc_type = arg
end

And(/^I click No on Security Level card$/) do
  @browser.label(:id => "docIsPubButton").click
  sleep 2
end

And(/^I click No on second question$/) do
  @browser.label(:id => "publicVersionNoButton").click
  sleep 2
end

And(/^I click Yes on second question$/) do
  @browser.label(:id => "publicVersionYesButton").click
  sleep 2
end

And(/^I click Yes on Security Level card$/) do
  @browser.label(:id => "docHasCBIButton").click
  sleep 2
end

And(/^then I select "([^"]*)" as security level$/) do |arg|
  sleep 2
  on_page(Submission_Page).security_level = arg
end

And(/^I enter Document Title as "([^"]*)"$/) do |arg|
  on_page(Submission_Page).doc_title = arg
end

And(/^I enter On Behalf Of as "([^"]*)"$/) do |arg|
  on_page(Submission_Page).doc_behalf = arg
end

And(/^I add file "([^"]*)"$/) do |file_name|
  sleep 3
  on_page(Submission_Page).attach = Dir::pwd + '/features/attachment_docs/' + file_name
  sleep 5
end

And(/^I enter attachment title of first document as "([^"]*)"$/) do |arg|
  on_page(Submission_Page).file_text = arg
end

And(/^I enter attachment title of second document as "([^"]*)"$/) do |arg|
  on_page(Submission_Page).file_text1 = arg
end

And(/^I click Save and Continue on attach files card$/) do
  @browser.button(:xpath => "//*[@id='wz-cont']/div/div/div[2]/div/div[2]/button[3]").click
  sleep 2
end

And /^I attach_edit_document$/ do
  on_page(EdisPage).attach_edit_doc
end

When /^I select (.*) as security_level$/ do |security_level_list|
  sleep 3
  on_page(EdisPage).security = security_level_list
end

And /^I select (.*) as document_type$/ do |document_type_list|
  #puts "#{on_page(EdisPage).document_type}"
  on_page(EdisPage).document_type = document_type_list
end

When /^I navigate to attach_edit_doc$/ do
  on_page(EdisPage).attach_edit_doc
end

Then /^attach file (.*) into attach_file$/ do |file_name|
  on_page(EdisPage).attach = Dir::pwd + '/features/attachment_docs/' + file_name
end

And /^enter (.*) into attach_title$/ do |name|
  on_page(EdisPage).attach_title = name
end

And /^I add_attachment$/ do
  on_page(EdisPage).add_attachment
end

And(/^I select Yes for document containing CBI\/BPI$/) do
  @browser.label(:id => "docHasCBIButton").click
  sleep 1
end

And(/^I select Yes for party has been served$/) do
 @browser.label(:id => "partyServedFlagYesLabel").click
end

And(/^I click Submit$/) do
  on_page(Submission_Page).submit
end

And(/^I confirm submission$/) do
  on_page(Submission_Page).confirm
end

And(/^I acknowledge paper copies required$/) do
  @browser.label(:id => "acknowlegePaperCopiesButton").click
end

And(/^I reorder attachments$/) do
  @browser.span(:xpath => "//*[@id='uploadedAttachmentsTable']/tbody/tr[2]/td[1]/a[1]/span[1]").click
  sleep 5
end

And(/^I delete one attachment$/) do
  #@browser.checkbox(:id => "editableSections0.delete1").click
  @browser.label(:xpath => "//*[@id='uploadedAttachmentsTable']/tbody/tr[2]/td[8]/label").click
end

And(/^I take screenshot$/) do
  @browser.screenshot.save "c:\Users\Bennie.Caesar\page.png"
end

And(/^I click New Request Card$/) do
  on_page(Submission_Page).new_request_card
end

And(/^I click Investigation Type card$/) do
  on_page(Submission_Page).inv_type_card
end

Then(/^I click Yes on Complaint Acknowledgement$/) do
  @browser.label(:id => "acknowlegeComplaintButtonYes").click
  sleep 1
end

Then(/^I click the Security Level card$/) do
  on_page(Submission_Page).security_level_card
end

And(/^I click the Paper Copies Required Card$/) do
  on_page(Submission_Page).paper_copies_required_card
end

And(/^I click the Document Information Card$/) do
  on_page(Submission_Page).document_information_card
end

And(/^I select  "([^"]*)"$/) do |arg|
  sleep 2
  on_page(Submission_Page).inv_phase = arg
end

And(/^I click 2nd page$/) do
  sleep 5
  @browser.link(:xpath => "//*[@id='invesResultsTable_paginate']/ul/li[3]/a").click
end

And(/^I click next page$/) do
  @browser.link(:xpath => "//*[@id='invesResultsTable_next']/a").click
end

And(/^I select No for OSE alert$/) do
  @browser.label(:id => "oseAlertFlagNoLabel").click
end

And(/^I select Yes for OSE alert$/) do
  sleep 2
  @browser.label(:id => "oseAlertFlagYesLabel").click
end

Then(/^I click Enter Investigation$/) do
 on_page(Submission_Page).streamlineIvestigation
  sleep 5
end

And(/^I enter "([^"]*)" as Investigation Number$/) do |arg|
  on_page(Submission_Page).investigationNumber = arg
end

And(/^I choose "([^"]*)" as Investigation Phase$/) do |arg|
  on_page(Submission_Page).investigationPhase1 = arg
end

And(/^I file another document$/) do
  on_page(Submission_Page).fileAnother
end