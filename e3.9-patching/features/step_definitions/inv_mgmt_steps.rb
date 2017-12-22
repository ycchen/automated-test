


When /^I go to inv_mgmt_tab$/ do
  on_page(InvMgmtPage).inv_mgmt
end

When /^I navigate to maintain investigation documents$/ do
  on_page(InvMgmtPage).maintain_inv_docs
end

When /^I select case_manager_name "([^"]*)"$/ do |name|
  on_page(InvMgmtPage).case_manager_name = name
end

When /^I filter$/ do
 on_page(InvMgmtPage).filter
end

When /^I click on the search results link$/ do
  on_page(InvMgmtPage).first_inv_no_link
end

When /^I click on doc id search result link$/ do
  on_page(InvMgmtPage).first_doc_id
end

When /^I search with document id$/ do
  on_page(InvMgmtPage).maintain_inv_doc_id
end

When /^I navigate to maintain investigation data$/ do
  on_page(InvMgmtPage).maintain_inv_data
end

Then /^I click on one of the search results of inv number link$/ do
  on_page(InvMgmtPage).inv_first_link
end

When /^I navigate to view case manager dashboard$/ do
  on_page(InvMgmtPage).view_case_manager_dashboard
end

When /^I search for document id (.*)$/ do |doc_id|
  on_page(InvMgmtPage).inv_mgmt_doc_id = doc_id
end

When /^I click go$/ do
  on_page(InvMgmtPage).doc_id_go
end

When /^I search for case manager "([^"]*)"$/ do |name|
  #on_page(InvMgmtPage).search_case_manager_name = name
  @browser.link(:id => "externalLink_7").click
end

When /^I select investigation phase as "([^"]*)"$/ do |arg|
  sleep 1
 on_page(InvMgmtPage).inv_phases = arg
end

When /^I select investigation type as "([^"]*)"$/ do |arg|
  on_page(InvMgmtPage).inv_types = arg
end

When /^I navigate to create new investigation page$/ do
  on_page(InvMgmtPage).create_new_inv
end

When /^I select new investigation type as "([^"]*)"$/ do |arg|
  on_page(InvMgmtPage).new_inv_type = arg
end

When /^I select investigation category as (.*)$/ do |number|
  on_page(InvMgmtPage).inv_category = number
end

When /^I select investigation status as Permanent Investigation$/ do
    on_page(InvMgmtPage).per_inv_status_element.click
end

When /^I select new investigation phase as "([^"]*)"$/ do |arg|
  sleep 5
    on_page(InvMgmtPage).new_inv_phase = arg
end

When /^investigation title is (.*)$/ do |arg|
 on_page(InvMgmtPage).new_inv_title = arg
  sleep 10
end

When /^I enter investigation number$/ do
  sleep 1
  random_invNumber = ('0'..'5').to_a.shuffle.first(6).join

  on_page(InvMgmtPage).new_inv_num = random_invNumber
 end

When /^I save the investigation$/ do
  on_page(InvMgmtPage).save_new_inv
  @browser.driver.switch_to.alert.accept
end


When /^I select investigation status as pre institution investigation$/ do
  on_page(InvMgmtPage).pre_inv_status_element.click
end

When /^I get next docket number$/ do
    on_page(InvMgmtPage).next_doc_number
end

#3377
When /^I enter action jacket control number as (.*)$/ do |num|
  on_page(InvMgmtPage).action_jacket_control_num = num
end


# APO Release
And(/^I navigate to generate apo release$/) do
  @browser.link(:id, "PageLink_13").click
end

And(/^I search for an investigation "(.*)"$/) do |arg|
  on_page(InvMgmtPage).apo_inv_num = arg
end

And(/^I select investigation phase for submission as "([^"]*)"$/) do |arg|
  on_page(InvMgmtPage).apo_inv_phase = arg
end

And(/^I select "([^"]*)" as investigation type for submission$/) do |arg|
  on_page(InvMgmtPage).apo_inv_types = arg
end

And(/^I select one of the investigation$/) do
  @browser.link(:id, "externalLink").click
end

And(/^I search investigations$/) do
  @browser.input(:id, "searchSubmit").click
end

And(/^I create new release$/) do
  @browser.input(:id, "createFormSubmit").click
end

And(/^I uncheck APO release$/) do
  @browser.checkbox(:id => "apoReleaseCheckBox").click

end

And(/^I uncheck security$/) do
  @browser.checkbox(:id => "securityCheckBox").click
end

And(/^I uncheck status$/) do
 @browser.checkbox(:id => "docStatusCheckBox").click
end

And(/^I filter apo release$/) do
  @browser.input(:id, "aPOReleaseFilterSubmit").click
end

And(/^I select document id to navigate to document editor page$/) do
  @browser.link(:id, "documentDetailsSubmitLink").click
end

