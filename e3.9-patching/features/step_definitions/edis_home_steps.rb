#require "watir-webdriver/extensions/alerts"
#require "rautomation"

Given /^I am on EDIS home page$/ do
  visit_page(EdisPage)
end

When /^I navigate to login screen$/ do
  on_page(EdisPage).home_page_login
end

And /^enter username (.*)$/ do |name|
  on_page(EdisPage).username = name
end

And /^enter password (.*)$/ do |pw|
  on_page(EdisPage).password = pw
end

And /^enter security_word (.*)$/ do |word|
  on_page(EdisPage).security_word = word
end

When /^I navigate to register page$/ do
  on_page(EdisPage).register
end

When /^I accept$/ do
  on_page(EdisPage).accept
end

When /^I enter first name as ([^"]*)$/ do |arg|
  on_page(EdisPage).fname = arg
end

When /^I enter last name as ([^"]*)$/ do |arg|
  on_page(EdisPage).lname = arg
end

When /^I select office division as ([^"]*)$/ do |arg|
  on_page(EdisPage).office_div = arg
end

When /^I enter email address as ([^"]*)$/ do |arg|
  on_page(EdisPage).email_id = arg
end

When /^enter userid as ([^"]*)$/ do |arg|
  on_page(EdisPage).user_id = arg
end

When /^enter reg_password as ([^"]*)$/ do |arg|
  on_page(EdisPage).password = arg
end

When /^enter confirm password as ([^"]*)$/ do |arg|
  on_page(EdisPage).confirm_pw = arg
end

When /^I select first security question (.*)$/ do |arg|
  on_page(EdisPage).sec_ques_1 = arg
end

When /^I enter answer for first question (.*)$/ do |arg|
  on_page(EdisPage).sec_ans_1 = arg
end

When /^I select second security question (.*)$/ do |arg|
  on_page(EdisPage).sec_ques_2 = arg
end

When /^I enter answer for second question (.*)$/ do |arg|
  on_page(EdisPage).sec_ans_2 = arg
end

When /^I enter captcha (.*)$/ do |arg|
  on_page(EdisPage).captcha = arg
end

When /^I submit register form$/ do
  on_page(EdisPage).reg_submit
end


When /^I accept registration information$/ do
  on_page(EdisPage).acct_reg_info
end

Given /^I navigate to edis main page$/ do
  step %{I am on EDIS home page}
  step %{I navigate to login screen}
 # step %{enter username autotest}
 # step %{enter password autotest987!!}
  step %{enter username BCAESAR}
  step %{enter password Testuser1234@}
  step %{enter security_word edis3}
  step %{I login}
end

And /^I login$/ do
  on_page(EdisPage).login
end

And /^I click on search_tab$/ do
  on_page(EdisPage).search_tab
end

And /^I navigate to advanced_search$/ do
  on_page(EdisPage).advanced_search
end

#   Submission Tab
And /^I go to submission_tab$/ do
  on_page(EdisPage).submission_tab
end

And /^I e_file_document$/ do
  on_page(EdisPage).e_file_doc
end

And /^I attach_edit_document$/ do
  on_page(EdisPage).attach_edit_doc
end

And /^I click on find_investigation$/ do
  on_page(EdisPage).find_investigation
end

And /^enter investigation number (.*)$/ do |number|
  sleep 4
  @browser.window(:title => /USITC - InvestigationSearch*/).use do
    #if (value == "Active")
    #on_page(EdisPage).inv_status
    #elsif (value == "Inactive")
    #  on_page(EdisPage).inv_status
    #  end
    #@browser.send_keys(:enter)
    #on_page(EdisPage).inv_phase = phase
    on_page(EdisPage).investigation_num = number
    #on_page(EdisPage).inv_phase = value
    on_page(EdisPage).find
    on_page(EdisPage).first_inves_link
    sleep 1
    @browser.driver.switch_to.alert.accept
    #sleep 1
    #window1 = RAutomation::Window.new :title => /The .*/
    #window1.send_keys :enter
    #sleep 2

  end
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

And /^I accept_attachments$/ do
  on_page(EdisPage).accept_attachments
end

And /^I accept_information$/ do
  on_page(EdisPage).accept_info
end

Then(/^I should see "([^"]*)" on the page$/) do |text|
  # wait_until_present
  sleep(30)
  @browser.text.should =~/#{text}/
end

And /^a message seen as (.*)$/ do |msg|
  on_page(EdisPage).error_msg.contain msg
end


When /^I create_cover_sheet$/ do
  on_page(EdisPage).cover_sheet
end

And /^filed by (.*)$/ do |firm_name|
  on_page(EdisPage).filed_by = firm_name
end

And /^enter document date as (.*)$/ do |date|
  on_page(EdisPage).doc_date = date
end

And /^navigate to cover_sheet_button$/ do
  on_page(EdisPage).cover_sheet_button
end

And /^I accept information$/ do
  on_page(EdisPage).accept_info
end


#When /^navigate to find_firm$/ do
#  on_page(EdisPage).find_firm_button
#end
#
#And /^finds_firm (.*)$/ do |firm_name|
#  @browser.window(:title => /USITC - Firm Organization Search/).use do
#    on_page(EdisPage).firm_org_name = firm_name
#    on_page(EdisPage).find_firm
#    on_page(EdisPage).first_firm_link
#  end
#end
#@browser.window(:title => /USITC - InvestigationSearch*/).use do
#  on_page(EdisPage).investigation_num = number
#  on_page(EdisPage).find
#Given /^I am on saved page on desktop$/ do
#  navigation
#end

#on_page(Try).document_type
#When /^select (.*) as document_type$/ do  |document_type_list|
#  on_page(Try).document_type = document_type_list
#end

#  Search Tab
And /^I go to search_tab$/ do
  on_page(EdisPage).search_tab
end

And /^I click on advanced_search$/ do
   on_page(EdisPage).advanced_search
end

When /^I search for (\d+) document id$/ do |doc_id|
  on_page(EdisPage).adv_search_doc_id = doc_id
end

And /^do full_text_keywords search (.*)$/ do |keyword|
  on_page(EdisPage).word_search = keyword
end

And /^I select (.*) as investigation types$/ do |value|
    on_page(EdisPage).adv_inv_types = value
end

And /^I select (.*) as apo release$/ do |val|
    on_page(EdisPage).apo_release = val
end



And /^I select (.*) for investigation status$/ do |value|
  #if (value == "All")
  on_page(EdisPage).adv_inv_status = value
    #end
end


And /^I select (.*) for document type$/ do |value|
  #if (value == "Select from list")
   on_page(EdisPage).adv_doc_type = value
# end
end


And /^click search_button$/ do
  on_page(EdisPage).search_button
end

And /^I open the document$/ do
  on_page(EdisPage).open_doc
end

And /^I navigate to next page$/ do
  on_page(EdisPage).next_page
end

And /^I navigate to search_by_investigation$/ do
  on_page(EdisPage).search_by_inv
end

And /^I search by entering investigation number (.*)$/ do  |number|
   on_page(EdisPage).search_inv_num = number
end

When /^I search$/ do
  sleep 3
  on_page(EdisPage).inv_search_button
  sleep 3
end

Then /^I click on one of the search results link$/ do
  on_page(EdisPage).inv_first_link
end

And /^I select (.*) as investigation phase for search$/ do |inv_phase|
  on_page(EdisPage).search_inv_phase = inv_phase
end

And /^I select (.*) as investigation type for search$/ do |inv_type|
  on_page(EdisPage).search_inv_type = inv_type
end

#  Report Tab
And /^I go to report_tab$/ do
  on_page(EdisPage).report_tab
end

And /^navigate to document_filing_report$/ do
  on_page(EdisPage).filing_report
end

When /^I select "(.*)" date_range$/ do |date_list|
  on_page(EdisPage).date_range = date_list
end

And /^I enter (.*) into date_from$/ do |from_date|
  on_page(EdisPage).date_from = from_date
end

And /^I enter (.*) into date_to$/ do |to_date|
  on_page(EdisPage).date_to = to_date
end

When /^enter report_investigation_num (.*)$/ do |inv_num|
  on_page(EdisPage).report_inv_num = inv_num
end

When /^I select (.*) as investigation phase$/ do |inv_phase|
   on_page(EdisPage).investigation_phase = inv_phase
end

And /^I select (.*) as investigation type$/ do |inv_type|
  on_page(EdisPage).inv_type = inv_type
end

And /^I select (.*) as document type$/ do |doc_type|
  on_page(EdisPage).doc_type = doc_type
end

And /^I select (.*) as security level$/ do |sec_level|
  on_page(EdisPage).security_level = sec_level
end

Then /^I execute_report$/ do
  on_page(EdisPage).execute_report
end

And /^navigate to document_processing_report$/ do
  on_page(EdisPage).processing_report
end

And /^I enter (.*) into processing_from_date$/ do |date|
  on_page(EdisPage).processing_from_date = date
end

And /^I enter (.*) into processing_to_date$/ do |date|
  on_page(EdisPage).processing_to_date = date
end

Then /^I process_execute_report$/ do
  on_page(EdisPage).process_execute_report
end

#  Dockets Desk
And /^I go to dockets desk tab$/ do
  on_page(EdisPage).dockets_desk_tab
end

And /^I navigate to accept documents page$/ do
  on_page(EdisPage).dockets_accept_doc
end

And /^I enter (\d+) as doc id$/ do |number|
  on_page(EdisPage).dockets_doc_id = number
end

And /^I navigate to document detail page$/ do
  on_page(EdisPage).go_button
end

And /^I select (.*) as security$/ do |value|
  on_page(EdisPage).doc_details_security = value
end

And /^I select (.*) as apo release for document detail page$/ do |val|
  on_page(EdisPage).doc_detail_apo_release = val
end

And /^I select (.*) as party served for document detail page$/ do |val|
  on_page(EdisPage).doc_detail_party_served = val
end

And /^I select (.*) as document type for document detail page$/ do |val|
on_page(EdisPage).doc_detail_doc_type = val
end

And /^I select (.*) as processing detail for document detail page$/ do |val|
  on_page(EdisPage).doc_detail_processing_detail = val
end

And /^I save changes$/ do
  sleep 2
  on_page(EdisPage).doc_detail_save_changes
end

And /^I change quality assurance status$/ do
  on_page(EdisPage).qa_status
end

And /^I select (.*) as quality assurance status$/ do  |val|
  on_page(EdisPage).dockets_desk_qa_status = val
end

And /^I set document status$/ do
  on_page(EdisPage).set_doc_status
end

And /^I select (.*) as document status$/ do  |value|
  on_page(EdisPage).dockets_desk_doc_status = value
end

And /^I save changes after changing document status$/ do
  #on_page(EdisPage).doc_detail_save_changes
  #@browser.input(:xpath => "//*[@id='saveOnSubmit']").click
  @browser.driver.switch_to.alert.accept
end

#View Audit Information
And /^I view audit information$/ do
  #@browser.window(:title => /USITC - EDIS Document Details*/).use do
   on_page(EdisPage).view_audit_info
    #end
end

And /^I see document date as (.*) and user as (.*)$/ do  |date,name|
     d = DateTime.now
     puts "#{DateTime.now}"
     c =d.strftime("print %d/%m/%Y")
    puts "#{d.strftime("print %d/%m/%Y")}"


  on_page(EdisPage).doc_date_field = date
  on_page(EdisPage).doc_date_user_field = name
end

And /^I see (.*)$/ do |name|
on_page(EdisPage).status_change_log_header = name
end


When /^(.*) table data field (\d+) has (.*) for row (.*)$/ do |table,i,value,row_num|
  puts "table name:#{table}"
  on_page(EdisPage).status_change_log = table
holding[row_num.to_i][i.to_i].text.should == value

  #html_table =@page.send("#{table}")
  #html_table[row_num.to_i][i.to_i].text.should == value
end



# 3339-Issue deleting 1st record all the time instead of deleting particular record

When /^I navigate to attachments in next page$/ do
   on_page(EdisPage).second_attachments_page
end

And /^I delete last attachment$/ do
  on_page(EdisPage).last_attachment

end

#Given /^I am edis attachment page$/ do
#  visit_page(Edis)
#end
#
#
#When /^I delete last attachement$/ do
#  on_page(Edis).last_attachment
#end
When /^I navigate to track documents page$/ do
  on_page(EdisPage).dockets_track_doc
end

When /^I select tracking location as "([^"]*)"$/ do |arg|
  on_page(EdisPage).dockets_tracking_loc = arg
end

When /^I enter "([^"]*)" as document id$/ do |arg|
  on_page(EdisPage).dockets_document_id = arg
end

When /^I submit$/ do
  on_page(EdisPage).dockets_submit
end

When /^I navigate to rss feed generator page$/ do
  on_page(EdisPage).rss_feed
end

When /^I select rss investigation type as "([^"]*)"$/ do |arg|
  on_page(EdisPage).rss_inv_type = arg
end

When /^I add investigation type$/ do
  on_page(EdisPage).rss_add_inv_type
end

When /^I find or add investigation$/ do
  on_page(EdisPage).rss_find_add_inv
end

When /^I enter rss investigation number (.*)$/ do |arg|
    @browser.window(:title => /USITC - Investigation Search*/).use do
    on_page(EdisPage).rss_inv_no = arg
    on_page(EdisPage).rss_search
    on_page(EdisPage).rss_first_inves_link
    #sleep 1
    #@browser.driver.switch_to.alert.accept
    end
  end

