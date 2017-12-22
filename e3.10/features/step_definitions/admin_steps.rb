# Manage Users
require "watir-webdriver/wait"

When /^I go to manage users$/ do
  sleep 2
  on_page(AdminPage).admin
  on_page(AdminPage).manage_users
end

When /^I search user id as ([^"]*)$/ do |arg|
  on_page(AdminPage).user_id = arg
end

When /^I find user$/ do
  sleep 2
   # on_page(AdminPage).find_user_element.click
    @browser.link(:id, 'findUserbtn').click
  sleep 10
 end

When /^I click on first search results link$/ do
  sleep 2
  on_page(AdminPage).user_id_first_link
end

When /^I navigate to advanced search$/ do
  on_page(AdminPage).manage_adv_search
end

When /^I enter first name as ([^"]*)$/ do |arg|
  sleep(3)
  on_page(AdminPage).adv_fname = arg
end

When /^I enter last name as ([^"]*)$/ do |arg|
  sleep(1)
  on_page(AdminPage).adv_lname = arg
end

And(/^I select office-division as "([^"]*)"$/) do |arg|
  on_page(AdminPage).off_div = arg
end

And(/^I enter firm-organization as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_org = arg
end

And(/^I select internal-external as "([^"]*)"$/) do |arg|
  on_page(AdminPage).int_ext = arg
end

And(/^I select account status as "([^"]*)"$/) do |arg|
  on_page(AdminPage).acct_status = arg
end

#Profile tab
And(/^I enter profile user name as "([^"]*)"$/) do |arg|
  sleep(4)
  on_page(AdminPage).profile_fn = arg
end

And(/^I enter profile middle name as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_mn = arg
end

And(/^I enter profile last name as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_ln = arg
end

And(/^I select profile firm_organisation as "([^"]*)"$/) do |arg|
  #sleep(4)
  on_page(AdminPage).profile_firm = arg
end

And(/^I select profile office_division as "([^"]*)"$/) do |arg|
  #sleep(2)
  on_page(AdminPage).profile_off = arg
end

And(/^I enter address1 as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_address1 = arg
end

And(/^I enter address2 as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_address2 = arg
end

And(/^I enter city as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_city = arg
end


And(/^I select state as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_state = arg
end

And(/^I enter zipcode as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_zip = arg
end

And(/^I select country as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_country = arg
end

And(/^I enter phone number "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_telephone = arg
end

And(/^I enter fax number "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_fax = arg
end

And(/^I enter email id "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_email = arg
end

And(/^I save$/) do
  on_page(AdminPage).save
end

And(/^I reset$/) do
  sleep 2
  on_page(AdminPage).reset
  sleep 3
end

#Account tab
And(/^I navigate to account tab$/) do
  sleep 5
  on_page(AdminPage).account_tab
end

And(/^I choose account status as Active$/) do
  on_page(AdminPage).acc_radio_button_element.click
end

And(/^I verify user question1 as "What is your favorite vegetable"$/) do
  @browser.text.include?("What is your favorite vegetable").should == true
end

And(/^I verify user answer1 as "asparagus"$/) do
  @browser.text.include?("asparagus").should == true
end

And(/^I verify user question2 as "What is your favorite restaurant"$/) do
  @browser.text.include?("What is your favorite restaurant").should == true
end

And(/^I verify user answer2 as "duplex diner"$/) do
  @browser.text.include?("duplex diner").should == true
end

And(/^I choose account status as Disable$/) do
  @browser.input(:id => "disableRadio").click
end

#And(/^I choose account status as "([^"]*)"$/) do |arg|
#  on_page(AdminPage).account_radio_button = arg
#end

#authority tab
And(/^I navigate to authorities tab$/) do
  sleep 8
  on_page(AdminPage).authority_tab
end

And(/^I select authorities as "([^"]*)"$/) do |arg|
  sleep(2)
  on_page(AdminPage).authorities = arg
 end

And(/^I multi select authorities as "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1,arg2,arg3|
  multi_select = @browser.select_list(:id, "authavailable")
  multi_select.options.each do |option|
    # puts(option)
    if  option.text == arg1 || option.text == arg2
      option.click(:control)
    end
  end
end

And(/^I add authority$/) do
  sleep(2)
  on_page(AdminPage).add_auth
end

And(/^I select groups as "([^"]*)"$/) do |arg|
  on_page(AdminPage).groups = arg
end

And(/^I select groups as "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  multi_select = @browser.select_list(:id, "groupavailable")
  multi_select.options.each do |option|
    # puts(option)
    if  option.text == arg1 || option.text == arg2
      option.click(:control)
    end
  end
end

And(/^I add group$/) do
  on_page(AdminPage).add_grp
end

And(/^I deselect authorities as "([^"]*)"$/) do |arg|
  on_page(AdminPage).deselect_auth = arg
end

And(/^I deselect multi authorities "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  #multi_sel = on_page(AdminPage).deselect_auth
  multi_select = @browser.select_list(:id, "authselected")
  # puts(multi_sel.text)
  multi_select.options.each do |list|
  #multi_sel.each do |list|
    # puts(list.text)
    # exit
    if list.text == arg1 || list.text == arg2 || list.text == arg3
      #list.select
      list.click(:control)
    end
  end
end

And(/^I remove authority$/) do
  on_page(AdminPage).remove_auth
end

And(/^I deselect groups as "([^"]*)"$/) do |arg|
  on_page(AdminPage).deselect_groups = arg
end

And(/^I deselect multi groups "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  #multi_sel = on_page(AdminPage).deselect_groups
  multi_select = @browser.select_list(:id, "groupselected")
  # puts(multi_sel.text)
  multi_select.options.each do |list|
    # puts(list.text)
    # exit
    if list.text == arg1 || list.text == arg2 || list.text == arg3
      list.select
    end
  end
end

And(/^I remove group$/) do
  on_page(AdminPage).remove_grp
end


#investigation assignment
And(/^I navigate to investigation assignment$/) do
  sleep(5)
  # wait_until_present or
  on_page(AdminPage).inv_assign
end

And(/^I add investigation$/) do
  sleep(2)
  on_page(AdminPage).add_inv
end

#on_page(InvMgmtPage).save_new_inv
#@browser.driver.switch_to.alert.accept

And(/^I select investigation status as "([^"]*)"$/) do |arg|
  sleep(3)
  on_page(AdminPage).inv_status = arg
end

And(/^I select investigation phase as "([^"]*)"$/) do |arg|
  sleep(2)
  on_page(AdminPage).inv_phase = arg
end

And(/^I select investigation type as "([^"]*)"$/) do |arg|
  sleep 5
  on_page(AdminPage).inv_type = arg
end

And(/^I enter investigation number as "([^"]*)"$/) do |arg|
  on_page(AdminPage).inv_num = arg
end

And(/^I enter investigation title as "([^"]*)"$/) do |arg|
  on_page(AdminPage).inv_title = arg
end

And(/^I find investigation$/) do
  on_page(AdminPage).find_inv
end

And(/^I click on first result$/) do
  sleep(7)
  #on_page(AdminPage).inv_first_result2
  @browser.link(:name => "investigation_list").click
end

And(/^I click on first result to manage investigation$/) do
  sleep(7)
  on_page(AdminPage).inv_first_result_manage_inv
end



And(/^I click on first test result$/) do
  sleep(7)
  on_page(AdminPage).inv_first_result
end

And(/^I click on a test result$/) do
  sleep(7)
  on_page(AdminPage).inv_first_result
end


And(/^I select security level as "([^"]*)"$/) do |arg|
  sleep 2
  on_page(AdminPage).admin_inv_phase = arg
end

And(/^I submit security level$/) do
 @browser.button(:id, 'invAddRows').click
end

And(/^I click on first result to select security level$/) do
  sleep(2)
  on_page(AdminPage).sec_level_pop_over
end
#search results

And(/^I save investigation phase$/) do
  #on_page(AdminPage).admin_save_element.click
  sleep(3)
  x = @browser.div(:class, 'popover-content')
  save = x.button(:class, 'btn-success invsecurity')
  # save.wait_until_present
  save.click
  # @browser.driver.switch_to.alert.accept
end

And(/^I close$/) do
  sleep(2)
  on_page(AdminPage).closex
  #@browser.div(:class, 'modal-header').when_present.button(:class,'closex').click
end

And(/^I save investigation assignment$/) do
  sleep(2)
  on_page(AdminPage).save_inv_assignment
end

And(/^user name as "([^"]*)"$/) do |arg|
  sleep(2)
   on_page(AdminPage).profile_fn.should == arg
end

And(/^last name as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_ln.should == arg
end

And(/^firm_organisation as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_firm.should == arg
end

And(/^office_division as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_off.should == arg
end

And(/^address1 as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_address1.should == arg
end

And(/^city as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_city.should == arg
end

And(/^state as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_state.should == arg
end

And(/^zipcode as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_zip.should == arg
end

And(/^country as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_country.should == arg
end

And(/^phone number as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_telephone.should == arg
end

And(/^fax number as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_fax.should == arg
end

And(/^email id as "([^"]*)"$/) do |arg|
  on_page(AdminPage).profile_email.should == arg
end

# Reindex Document

Then(/^I navigate to admin page$/) do
  on_page(AdminPage).admin
end

And(/^I go to reindex document$/) do
  on_page(AdminPage).reindex_doc
end


And(/^I enter document id as "([^"]*)"$/) do |arg|
  on_page(AdminPage).reindex_doc_id = arg
end

And(/^I enter investigation number "([^"]*)"$/) do |arg|
  on_page(AdminPage).reindex_inv_no = arg
end

And(/^I enter investigation phase "([^"]*)"$/) do |arg|
  on_page(AdminPage).reindex_inv_phase = arg
end


And(/^I request reindex using document id$/) do
  on_page(AdminPage).request_reindex_doc
end

And(/^I request reindex using investigation number$/) do
  on_page(AdminPage).request_reindex_inv
end

# User Access Report
Then(/^I navigate to user access report for that user$/) do
  sleep(6)
  on_page(AdminPage).user_access_report_link
end

And(/^I multi select audit categories as "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  sleep(4)
  multi_select = @browser.select_list(:id, "query.auditRecordCatagories")
  multi_select.options.each do |list|
    if list.text == arg1 || list.text == arg2 || list.text == arg3
      list.click(:control)
    end
  end
end

And(/^I select sort property for user access report as "([^"]*)"$/) do |arg|
  on_page(AdminPage).user_access_sort_prop = arg
end

And(/^I select sort direction for user access report as "([^"]*)"$/) do |arg|
  on_page(AdminPage).user_access_sort_dir = arg
end

# And(/^I select records per page as "([^"]*)"$/) do |arg|
#   on_page(AdminPage).user_access_record_per_page = arg
# end


And(/^I see date as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^I select audit record date as "([^"]*)"$/) do |arg|
  @browser.select_list(:id, "auditRecdDateComparisonType").send_keys (arg)
end

And(/^I select audit from date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "auditRecdDate1").send_keys (arg)
end

And(/^I select audit to date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "auditRecdDate2").send_keys (arg)
end


And(/^I remove investigation$/) do
  @browser.button(:class, 'btn removeInvRowC').click
end

And(/^I reset user details$/) do
  sleep 2
  @browser.button(:id, 'tabResetbtn').click
  sleep 3
end

And(/^I cancel user details$/) do
  sleep 1
  @browser.button(:id, 'userCancelbtn').click
  sleep 3
end

And(/^I cancel security level selection$/) do
  @browser.button(:id, 'closebtn').click
end

And(/^I reset security level selection$/) do
@browser.button(:id, 'resetFindInvestigation').click
end

And(/^I multi select security level investigation as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  multi_select = @browser.select_list(:id => "securitylevelid")
  # puts(multi_sel.text)
  multi_select.options.each do |list|
    # print(inp.text)
    # exit
    if list.text == arg1 || list.text == arg2
      list.click(:control)
    end
  end
end

When(/^I click on first search result link$/) do
  sleep 2
  @browser.link(:name, 'userid_list').click
end

And(/^I multi select security level investigation as "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5|
  multi_select = @browser.select_list(:id => "securitylevelid")
  # puts(multi_sel.text)
  multi_select.options.each do |list|
    # print(inp.text)
    # exit
    if list.text == arg1 || list.text == arg2 ||list.text == arg3 || list.text == arg4 || list.text == arg5
      list.click(:control)
    end
  end
end

Then(/^I should see investigation number as "([^"]*)" and investigation phase as "([^"]*)" and security level as "([^"]*)"$/) do |arg1, arg2, arg3|
  @browser.text.should =~/#{arg1}/
  @browser.text.should =~/#{arg2}/
  @browser.text.should =~/#{arg3}/
  # on_page(AdminPage).profile_email.should == arg
end

And(/^I go to next page$/) do
  @browser.link(:xpath, "//*[@id='investigationAssignTable_next']/a").click

  # @browser.link(:xpath, "id('investigationListDataTable')//tbody//tr[1]//td[1]//a").click
end

And(/^I select user$/) do
  @browser.link(:xpath => "//*[@id='userListDataTable']/tbody/tr/td[1]/a").click
end