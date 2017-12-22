

When /^navigate to dockets performance audit report$/ do
  on_page(ReportPage).performance_audit_report
end

When /^I enter received date as "([^"]*)"$/ do |arg|
  on_page(ReportPage).received_date = arg
end

When /^I enter through date as "([^"]*)"$/ do |arg|
  on_page(ReportPage).through_date = arg
end

When /^I select time range as "([^"]*)"$/ do |arg|
  on_page(ReportPage).time_range = arg
end

When /^I execute report$/ do
  sleep 1
  on_page(ReportPage).execute_report
end

When /^I navigate to document copies compliance report$/ do
  on_page(ReportPage).doc_copies_compliance_report
end

#  Document Verification and Destruction Report - Parameters
When /^I navigate to document verification and destruction report$/ do
  on_page(ReportPage).doc_ver_and_des_report
end

When /^I select date selected as official received date$/ do
  on_page(ReportPage).verified_destruct_date_selected_element.click
end

# Investigation Reports
When /^I navigate to investigation report$/ do
  on_page(ReportPage).investigation_report
end

 When /^I search for investigation number "([^"]*)"$/ do |arg|
   on_page(ReportPage).inv_report_inv_num = arg
end

When /^I click on first result search link$/ do
  on_page(ReportPage).first_result_search_link
end

And(/^I click on investigation number 104-12347$/) do
  @browser.link(:id => "externalLink_7").click
end

When /^I sort order by (.*)$/ do |arg|
  on_page(ReportPage).inv_report_sort_order = arg
end

When /^I navigate to first investigation report results link$/ do
  on_page(ReportPage).inv_report_result_first_link
end

When /^I enter document id (.*)$/ do |id|
  on_page(ReportPage).inv_report_doc_id = id
end

When /^I navigate to investigation disposition report$/ do
  on_page(ReportPage).inv_dis_report
end

When /^I select "(.*)" tentative termination date range as (.*) to (.*)$/ do |range,from_date,to_date|
   on_page(ReportPage).tentative_ter_date_range = range
   on_page(ReportPage).tentative_ter_from_date = from_date
   on_page(ReportPage).tentative_ter_to_date = to_date
end

When /^I select "(.*)" litigation hold date range as (.*) to (.*)$/ do |range,from_date,to_date|
  on_page(ReportPage).litigation_hold_date_range = range
  on_page(ReportPage).litigation_hold_from_date = from_date
  on_page(ReportPage).litigation_hold_to_date = to_date
end

When /^I navigate to user audit access report$/ do
  on_page(ReportPage).user_audit_access_report
end

When /^I enter user id as (.*)$/ do  |id|
  on_page(ReportPage).user_id = id
end

When /^I find user$/ do
  on_page(ReportPage).find_user
end

Then /^I click on first result link$/ do
  on_page(ReportPage).first_result_link
end

When /^I select audit category as (.*)$/ do |arg|
  on_page(ReportPage).audit_category = arg
end

When /^I select "(.*)" date range as (.*) to (.*)$/ do |date_range,from,to|
  on_page(ReportPage).audit_record_date_range = date_range
  on_page(ReportPage).audit_record_from_date = from
  on_page(ReportPage).audit_record_to_date = to
end

#User List Report
When /^I navigate to user audit report$/ do
  on_page(ReportPage).user_list_report
end

When /^I execute user list report$/ do
  on_page(ReportPage).user_list_execute_report
end

# Administrative Record Report
When /^I navigate to administrative record report$/ do
  on_page(ReportPage).administrative_record_report
end

# APO Investigation Report
When /^I navigate to apo investigation report$/ do
  on_page(ReportPage).apo_inv_report
end

When /^I select document type as "([^"]*)"$/ do |arg|
  on_page(ReportPage).apo_doc_type = arg
end

When /^I navigate to authorities report$/ do
  on_page(ReportPage).authorities_report
end

When /^I select "([^"]*)" as authority groups$/ do |arg|
  on_page(ReportPage).authority_group = arg
end

When /^I select "([^"]*)" as authorities$/ do |arg|
  on_page(ReportPage).authorities = arg
end

When /^I select "([^"]*)" as investigation authorities$/ do |arg|
  on_page(ReportPage).inv_authorities = arg
end

Then(/^I should see "([^"]*)" on the dockets performance Audit report page$/) do |text|
  sleep 20
  @browser.text.should =~/#{text}/
end

And(/^I click on appropriate result search link$/) do
  on_page(ReportPage).appropriate_result_search_link
end

And(/^I navigate to next page within report$/) do
  @browser.link(:id => "linkFwd_0").click
end