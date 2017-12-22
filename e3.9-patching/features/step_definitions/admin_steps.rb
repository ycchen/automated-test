When /^I go to admin tab$/ do
  on_page(AdminPage).admin_tab
end

When /^I go to administer user accounts$/ do
  on_page(AdminPage).admin_user_accounts
end

When /^I enter (.*) as user id$/ do |name|
  on_page(AdminPage).admin_user_id = name
end

When /^I find admin user$/ do
  on_page(AdminPage).admin_find_user
end

When /^I go to maintain firm organizations$/ do
  on_page(AdminPage).admin_main_firm_org
end

When /^I create firm organization$/ do
  on_page(AdminPage).admin_create_firm_org
end

When /^I enter firm name$/ do
  sleep 1
  random_firmName = ('FirmName').to_s + ('0'..'9').to_a.shuffle.first(8).join
  on_page(AdminPage).admin_firm_name = random_firmName
end

When /^I enter firm name as "([^"]*)"$/ do |arg|
 on_page(AdminPage).admin_firm_name = arg
end

When /^I enter firm address as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_firm_add = arg
end

When /^I enter firm city as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_firm_city = arg
end

When /^I enter firm zip as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_firm_zip = arg
end

When /^I enter firm state as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_firm_state = arg
end

When /^I enter firm country as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_firm_country = arg
end

When /^I enter firm contact email as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_firm_email = arg
end

When /^I enter firm telephone number as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_firm_phone = arg
end

When /^I save firm$/ do
  on_page(AdminPage).admin_firm_save
end

When /^I go to manage authority groups$/ do
  on_page(AdminPage).admin_manage_authority_groups
end

When /^I select "([^"]*)" as authority group$/ do |arg|
  on_page(AdminPage).admin_authority_group = arg
end

When /^I load group$/ do
  on_page(AdminPage).admin_load_group
end

When /^I select "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_available = arg
end

When /^I select$/ do
  on_page(AdminPage).admin_select
end

And(/^I multi select investigation phase as "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  multi_select = @browser.select_list(:id, "groupAuthoritiesPalette_0_avail")
  multi_select.options.each do |option|
    # puts(option)
    if  option.text == arg1 || option.text == arg2 || option.text == arg3
      option.click(:control)
    end
  end
end

And(/^I remove one of the Authorities by deselecting "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  multi_select = @browser.select_list(:id, "groupAuthoritiesPalette_0")
  multi_select.options.each do |option|
    # puts(option)
    if  option.text == arg1 || option.text == arg2
      option.click(:control)
    end
  end
end

When /^I save group$/ do
  sleep 2
  on_page(AdminPage).admin_save_group
end

When /^I enter new group name$/ do
  sleep 1
  #random_userId = ('a'..'z').to_a.shuffle.first(8).join
  random_groupName = ('GroupName').to_s + ('0'..'5').to_a.shuffle.first(6).join
  on_page(AdminPage).admin_create_group = random_groupName
end

When /^I create group$/ do
  on_page(AdminPage).admin_create_group
end

When /^I go to manage notice$/ do
  on_page(AdminPage).admin_manage_notice
end

When /^I select key as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_key = arg
end

When /^I select request source as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_request_source = arg
end

When /^I enter text as "([^"]*)"$/ do |arg|
  on_page(AdminPage).admin_text = arg
end

When /^I add notice$/ do
  on_page(AdminPage).admin_add_notice
end

When /^I go to next page$/ do
  on_page(AdminPage).admin_next_page
end

When /^I delete an action$/ do
  #on_page(AdminPage).admin_delete
  @browser.link(:id => "deleteLink_7").click
end

When /^I go to maintain investigation type$/ do
  on_page(AdminPage).admin_manage_inves_type
end

When /^I select admin page investigation type as "([^"]*)"$/ do |arg|
  sleep 2
  on_page(AdminPage).admin_inv_type = arg
end

When /^I load doc types$/ do
  on_page(AdminPage).load_doc_type
end

When /^I select admin page document type as "([^"]*)"$/ do |arg|
  sleep(2)
  on_page(AdminPage).admin_doc_type = arg
end

When /^I load metadata$/ do
  on_page(AdminPage).load_metadata
end

When /^I save manage investigation type$/ do
  on_page(AdminPage).manage_inv_type_save
end

# Manage Special Processing Types
When /^I go to manage special processing types$/ do
  on_page(AdminPage).manage_special_processing_type
end

When /^I select special processing as (.*)$/ do |arg|
  on_page(AdminPage).special_processing = arg
end

When /^I load special processing$/ do
  on_page(AdminPage).load_special_processing
end

When /^I save special processing$/ do
  on_page(AdminPage).special_processing_save
end

And(/^I add selected Authorities$/) do
  @browser.image(:name => "groupAuthoritiesPalette_0_selectImage").click
end

And(/^I click deselect$/) do
  @browser.image(:name => "groupAuthoritiesPalette_0_deselectImage").click
end

And(/^I enter number of copies as "([^"]*)"$/) do |arg|
  sleep 3
  on_page(AdminPage).number_of_copies = arg
end

And(/^I adjust external copies as "([^"]*)"$/) do |arg|
  on_page(AdminPage).externalCopies = arg
end