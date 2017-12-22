When /^I go to search tab$/ do
  on_page(SearchPage).search_page
end

When /^I navigate to investigation search$/ do
  on_page(SearchPage).inv_page
end

And(/^I enter number "([^"]*)"$/) do |arg|
  sleep 7
  on_page(SearchPage).inv_num = arg
end

And(/^I select investigation search phase as "([^"]*)"$/) do |arg|
  @browser.div(:id, 'ext-gen1076').click
  sleep(1)
   on_page(SearchPage).inv_phase = arg
  print(arg)
  # lists = @browser.div(:id, 'boundlist-1026-listEl').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
  # lists.each do |list|
  #   if list.text == arg then
  #     list.click
  #   end
  # end

  #(:class, 'popover-content').button(:class, 'btn-success invsecurity').click
  #on_page(SearchPage).phase_button
  #on_page(SearchPage).inv_phase = arg
end

And(/^I select multi selection phase as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
    @browser.div(:id, 'ext-gen1076').click
    sleep(1)
    multi_sel = @browser.div(:id, 'boundlist-1026-listEl').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
    multi_sel.each do |list|
      if list.text == arg1 || list.text == arg2  then
        list.click
      end
    end
    # multi_sel = on_page(SearchPage).inv_phase
    #  # puts(multi_sel.text)
    # multi_sel.each do |list|
    #   # puts(list.text)
    #   # exit
    #     if list.text == arg1 || list.text == arg2  then
    #       list.select
    #     end
  # end
end

And(/^I select investigation search type as "([^"]*)"$/) do |arg|
  @browser.div(:id, 'ext-gen1079').click
  sleep(1)
  on_page(SearchPage).inv_type = arg
  # lists = @browser.div(:id, 'boundlist-1028-listEl').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
  # lists.each do |list|
  #   if list.text == arg then
  #     list.click
  #   end
  # end
  #on_page(SearchPage).inv_type = arg
end

And(/^I select multi search type as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  @browser.div(:id, 'ext-gen1079').click
  sleep(1)
  multi_sel = @browser.div(:id, 'boundlist-1028-listEl').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
  multi_sel.each do |list|
    if list.text == arg1 || list.text == arg2  then
      list.click
    end
  end
end

And(/^click on side to loose focus on previous element$/) do
  sleep 2
  @browser.div(:id, 'gridview-1021').click
end

And(/^I select investigation search status as "([^"]*)"$/) do |arg|
 # @browser.div(:id, 'invStatusFilterField-inputEl').click
  sleep 2
  on_page(SearchPage).inv_status = arg
  # lists = @browser.div(:id, 'boundlist-1031-listEl').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
  # lists.each do |list|
  #   if list.text == arg then
  #     list.click
  #   end
  # end
end

And(/^I enter investigation search title as "([^"]*)"$/) do |arg|
  on_page(SearchPage).inv_title = arg
  sleep 3
end

And(/^I search investigation$/) do
  sleep 4
  @browser.link(:id => "button-1013").click
  #on_page(SearchPage).inv_search
end

And(/^I reset investigation$/) do
  @browser.span(:id, 'button-1014-btnInnerEl').click
  sleep 4
  #on_page(SearchPage).inv_reset
end

#Advanced search
And(/^I navigate to advanced search under search$/) do
  on_page(SearchPage).adv_search
end

And(/^I search for "([^"]*)"$/) do |arg|
  on_page(SearchPage).keyword = arg
end

And(/^I search for results$/) do
  @browser.span(:id, 'button-1027-btnIconEl').click
end

And(/^I reset search$/) do
  @browser.span(:id, 'button-1028-btnIconEl').click
end

# And(/^I search for that keyword$/) do
#     @browser.name(:id, 'keywords-inputEl').click
#   # @browser.span(:id , 'marqueeSearch-btnIconEl').click
# end

And(/^I expand investigation data$/) do
  sleep(1)
  # on_page(SearchPage).inv_toggle
  @browser.img(:xpath, "id('investigationDataPanel_header-innerCt')//div[2]//img").click
  # @browser.img(:class, 'x-tool-img x-tool-expand-bottom').click

  # x-tool-img x-tool-expand-bottom
end

And(/^I enter investigation data number as "([^"]*)"$/) do |arg|
  on_page(SearchPage).adv_inv_no = arg
  #@browser.text_field(:id, 'textfield-1023-inputEl').click
end

And(/^I select advanced search phase as "([^"]*)"$/) do |arg|
  # wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//table[@id('invPhase-triggerWrap')]//tbody[1]//tr[1]//td[2]")))
  @browser.div(:xpath, "id('invPhase-triggerWrap')//tbody[1]//tr[1]//td[2]//div").click
  sleep(1)
  lists = @browser.div(:class, 'x-boundlist-list-ct x-unselectable').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
  lists.each do |list|
    if list.text == arg then
      list.click
    end
  end

end

And(/^click on side to loose focus on previous element in advanced search page$/) do
  sleep 8
  @browser.div(:id, 'advancedSearchInterface').click
end

And(/^I select Apo release$/) do
  @browser.input(:xpath, "id('apoRelease-inputRow')//td[2]//div//input").click
end

And(/^I select Sec 337 investigation type as "([^"]*)"$/) do |arg|
  #@browser.div(:xpath, "id('invType-triggerWrap')//tbody[1]//tr[1]//td[2]//div").click
  sleep 1
  @browser.div(:id => "invType-inputEl").click
  sleep(1)
  @browser.li(:xpath, '//*[@id="boundlist-1087-listEl"]/ul/li[5]').click
end

And(/^I select advanced search investigation type as "([^"]*)"$/) do |arg|
  sleep 1
  @browser.div(:id => "invType-inputEl").click
  sleep(1)
  @browser.li(:xpath, '//*[@id="boundlist-1087-listEl"]/ul/li[1]').click
end

And(/^I select advanced search status as "([^"]*)"$/) do |arg|
  sleep 1
  @browser.div(:id => "//*[@id='ext-gen1193']").click
  sleep 1
  @browser.li(:xpath, '//*[@id="boundlist-1123-listEl"]/ul/li[1]').click
end

And(/^I select advanced search title as "([^"]*)"$/) do |arg|
  on_page(SearchPage).adv_title = arg
end

And(/^I expand to see more details$/) do
  sleep 12
  @browser.div(:xpath, "id('advancedSearchGrid-body')//div[1]//table//tbody//tr[1]//td[1]//div[1]//div[1]").click
  # @browser.td(:class, 'x-grid-cell x-grid-td x-grid-cell-headerId-gridcolumn-1068 x-grid-cell-special x-grid-cell-first x-unselectable x-grid-cell-special').div(:class, 'x-grid-row-expander').click
end

And(/^I navigate to document details page$/) do
  sleep(10)
  @browser.link(:xpath, "id('advancedSearchGrid-body')//div[1]//table//tr[1]//td//tr//td[2]//div[1]//a").click
  # @browser.td(:class, 'x-grid-cell x-grid-td x-grid-cell-headerId-templatecolumn-1024 x-unselectable').div(:class, 'x-grid-cell-inner').link(:href, 'document/15987').click
end

And(/^I expand document data$/) do
  # @browser.img(:xpath, "id('menuPanel-innerCt')//div[3]//img").click
   @browser.img(:id, 'tool-1068-toolEl').click
end

And(/^I enter document ID as "([^"]*)"$/) do |arg|
  sleep(4)
  on_page(SearchPage).adv_doc_id = arg
end

And(/^I enter document title as "([^"]*)"$/) do |arg|
  on_page(SearchPage).adv_doc_title = arg
end

And(/^I select advanced security as "([^"]*)"$/) do |arg|
  @browser.div(:xpath, "id('security-triggerWrap')//tbody//tr//td[2]//div").click
  sleep(1)
  on_page(SearchPage).adv_security = arg

  # lists = @browser.div(:class, 'x-boundlist-list-ct x-unselectable').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
  # lists.each do |list|
  #   if list.text == arg then
  #     list.click
  #   end
  # end
end

And(/^I select advanced document type as "([^"]*)"$/) do |arg|
   @browser.div(:xpath, "id('docType-triggerWrap')//tbody//tr//td[2]//div").click
 # on_page(SearchPage).adv_type = arg
 #  lists = @browser.div(:id, 'docType-listWrapper').ul(:id, 'docType-itemList').lis(:id, 'docType-inputElCt')
   lists = @browser.div(:id, 'boundlist-1090').div(:id, 'boundlist-1090-listEl').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
    # puts "#{lists.length}"
   lists.each do |ele|
     element_value = ele.text
     # puts"#{element_value}"
     if element_value == arg  then
       ele.click
       break
     end
   end
    end

And(/^I multi select advanced document type as "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  @browser.div(:xpath, "id('docType-triggerWrap')//tbody//tr//td[2]//div").click
  lists = @browser.div(:id, 'boundlist-1090').div(:id, 'boundlist-1090-listEl').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
  puts "#{lists.length}"
  lists.each do |ele|
    element_value = ele.text
    puts"#{element_value}"
    if element_value == arg1 || element_value == arg2 || element_value == arg3 then
      ele.click
    end
    end
end

# Document Index Data
And(/^I expand document index data$/) do
  @browser.img(:id, "tool-1043-toolEl").click
end


And(/^I enter action jacket control number "([^"]*)"$/) do |arg|
  sleep(2)
  on_page(SearchPage).action_jacket_ctr_no = arg
end

Then(/^I navigate to documents details page to validate action jacket number$/) do
  sleep(4)
  @browser.link(:xpath, "id('advancedSearchGrid-body')//div//table//tr[1]//td[2]//div[1]//a").click
  # @browser.td(:class, 'x-grid-cell x-grid-td x-grid-cell-headerId-templatecolumn-1023 x-unselectable').div(:class, 'x-grid-cell-inner').link(:href, 'document/127537').click
end

And(/^I enter CBI number as "([^"]*)"$/) do |arg|
  on_page(SearchPage).cbi_no = arg
end

Then(/^I navigate to documents details page to validate cbi number$/) do
  sleep(4)
  @browser.link(:xpath, "id('advancedSearchGrid-body')//div//table//tr[1]//td[2]//div[1]//a").click
end

And(/^I enter publication number as "([^"]*)"$/) do |arg|
  on_page(SearchPage).pub_no = arg
end

Then(/^I navigate to documents details page to validate publication number$/) do
  sleep(4)
  @browser.link(:xpath, "id('advancedSearchGrid-body')//div//table//tr[1]//td[2]//div[1]//a").click
end

And(/^I enter memorandum control number as "([^"]*)"$/) do |arg|
  on_page(SearchPage).mem_ctr_no = arg
end

Then(/^I navigate to documents details page to validate memorandum control number$/) do
  sleep(4)
  @browser.link(:xpath, "id('advancedSearchGrid-body')//div//table//tr[1]//td[2]//div[1]//a").click
end

And(/^I enter apo number as "([^"]*)"$/) do |arg|
  on_page(SearchPage).apo_no = arg
end

And(/^I enter action request number as "([^"]*)"$/) do |arg|
  on_page(SearchPage).action_req_no = arg
end

#Submitter Data
And(/^I expand submitter data$/) do
  @browser.img(:id, "tool-1044-toolEl").click
end

And(/^I enter filed by as "([^"]*)"$/) do |arg|
  on_page(SearchPage).sub_filed_by = arg
end

And(/^I enter on behalf of as "([^"]*)"$/) do |arg|
  on_page(SearchPage).sub_on_behalf_of = arg
end

And(/^I select firm or organisation as "([^"]*)"$/) do |arg|
  @browser.div(:xpath, "id('firmOrgs-triggerWrap')//tbody//tr//td[2]//div").click
  sleep(1)
  lists = @browser.div(:class, 'x-boundlist-list-ct x-unselectable').ul(:class, 'x-list-plain').lis(:class, 'x-boundlist-item')
  lists.each do |ele|
    eleValue = ele.text
    if eleValue == arg then
      ele.click
      break
    end
  end

end


#Date data
And(/^I expand date data$/) do
  # @browser.img(:xpath, "id('tool-1071-toolEl')//div[2]//img").click
  @browser.img(:id, 'tool-1045-toolEl').click
end

And(/^I select official received date range$/) do
  @browser.span(:id, 'offRecdComparisonType-togglegroup-BETWEEN-btnIconEl').click
end

And(/^I click on official received from date$/) do
  @browser.div(:id, 'ext-gen1285').click
end

And(/^I select official received from date as "([^"]*)"$/) do |arg|
  sleep(2)
    @browser.input(:id, 'offRecdFromDate-inputEl').send_keys(arg)
  # on_page(SearchPage).off_received_from_date = arg
end

And(/^I select official received to date as "([^"]*)"$/) do |arg|
  sleep(2)
  @browser.input(:id, 'offRecdToDate-inputEl').send_keys(arg)
    # on_page(SearchPage).off_received_to_date = arg
end

# Save current search
And(/^I save current search$/) do
  @browser.span(:id, 'searchSaveButton-btnIconEl').click

end

And(/^I enter saved search name as "([^"]*)"$/) do |arg|
  on_page(SearchPage).saved_search_name = arg
end

Then(/^I click ok to save search name$/) do
  @browser.span(:id, 'button-1005-btnIconEl').click
end

And(/^I navigate to InvData1 saved search$/) do
  @browser.div(:id, 'savedSearchToolbar-targetEl').span(:id, 'button-1087-btnIconEl').click
end

And(/^I maximize the page$/) do
  @browser.link(:id, 'maximize').click
end

And(/^I select document date range$/) do
  @browser.span(:id, 'docDateComparisonType-togglegroup-BETWEEN-btnIconEl').click
end

And(/^I select document from date as "(.*)"$/) do |arg|
  # on_page(SearchPage).document_from_date = arg
  sleep(2)
  @browser.input(:id, 'docDateFromDate-inputEl').send_keys(arg)
end


And(/^I select document to date as "(.*)"$/) do |arg|
    # on_page(SearchPage).document_to_date = arg
  sleep(2)
  @browser.input(:id, 'docDateToDate-inputEl').send_keys(arg)
end


And(/^I maximize page size$/) do
  @browser.span(:id, "maximize-btnIconEl").click
end