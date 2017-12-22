And(/^I go to report tab$/) do
  sleep 3
  on_page(ReportPage).report_page
end

And(/^I go to document filling report$/) do
  on_page(ReportPage).doc_filing_report
end

Then(/^I select "(.*)" date range$/) do |arg|
  on_page(ReportPage).official_received_date = arg
end

And /^I enter (.*) into date from$/ do |from_date|
   # on_page(ReportPage).date_from = from_date
  x = @browser.input(:id, "offRecdDate1").send_keys (from_date)
  # puts(x)
end

And /^I enter (.*) into date to$/ do |to_date|
  # on_page(ReportPage).date_to = to_date
   @browser.input(:id, "offRecdDate2").send_keys (to_date)
end


Then(/^I submit to generate report$/) do
  on_page(ReportPage).submit_report
  sleep 6
end

And(/^enter report investigation_num (.*)$/) do |inv_num|
  on_page(ReportPage).inv_no = inv_num
end

When(/^I select (.*) as investigation phase$/) do |inv_phase_list|
  on_page(ReportPage).inv_phase = inv_phase_list
end

When(/^I multi select investigation phase as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  sleep 3
 # multi_sel = on_page(ReportPage).inv_phase
 # multi_sel.options.each do |list|
 #  if list.text == arg1 || list.text == arg2
 #    list.click(:control)
 #   end
 # end
  multi_select = @browser.select_list(:id, "query.investigationPhases")
  multi_select.options.each do |option|
    # puts(option)
    if  option.text == arg1 || option.text == arg2
      option.click(:control)
    end
  end
end

And(/^I select (.*) as investigation type$/) do |inv_type_list|
  on_page(ReportPage).inv_type = inv_type_list
end

And(/^I multi select investigation type as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  multi_select = @browser.select_list(:id, "query.investigationTypes")
  multi_select.options.each do |option|
    # puts(option)
    if  option.text == arg1 || option.text == arg2
      option.click(:control)
    end
  end
end

And(/^I select (.*) as document type$/) do |doc_type_list|
  sleep 2
  on_page(ReportPage).doc_type = doc_type_list
end

And(/^I multi select document type as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  multi_select = @browser.select_list(:id, "query.documentTypes")
  multi_select.options.each do |option|
    # puts(option)
    if  option.text == arg1 || option.text == arg2
      option.click(:control)
    end
  end
end

And(/^I select (.*) as security level$/) do |security_level_list|
  on_page(ReportPage).sec_level = security_level_list
end

And(/^I multi select security level as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  multi_select = @browser.select_list(:id, "query.securityLevels")
  multi_select.options.each do |option|
    # puts(option)
    if  option.text == arg1 || option.text == arg2
      option.click(:control)
    end
  end
end

And(/^I select (.*) as sort property$/) do |sort_property|
  on_page(ReportPage).sort = sort_property
end

And(/^I select (.*) as sort direction$/) do |sort_direction|
  on_page(ReportPage).sort_dir = sort_direction
end

And(/^I select (.*) as records per page$/) do |records_per_page|
  on_page(ReportPage).records_per_page = records_per_page
end

And(/^I can get to document editor$/) do
  @browser.link(:href, "http://prepres0.edis3.usitc.gov:80/edis3-ui/search/document/540551").click
end


# document processed report
And(/^I go to document processed report$/) do
  on_page(ReportPage).doc_process_report
end

And(/^I enter official received from date as "(.*)"$/) do |arg|
  sleep 3
  # @browser.div(:class, "form-group").click
  # on_page(ReportPage).off_from_date = arg
  @browser.input(:id, "fromDate").send_keys (arg)
end

And(/^I enter official received to date as "(.*)"$/) do |arg|
  sleep 3
  # @browser.div(:class, "form-group").click
  # on_page(ReportPage).off_to_date = arg
  @browser.input(:id, "toDate").send_keys (arg)
end

And(/^I submit to generate processed report$/) do
  on_page(ReportPage).submit_report
end

And(/^I reset report info$/) do
  on_page(ReportPage).reset
  sleep 4
end

And(/^I see total documents processed are "([^"]*)"$/) do |arg|
  sleep(8)
  @browser.text.should =~/#{arg}/
end

# APO Investigation Report
And(/^I go to apo investigation report$/) do
  on_page(ReportPage).apo_inv_report
end

And(/^I navigate to next results page$/) do
  sleep 3
  on_page(ReportPage).apo_next_results_page
end

And(/^I export results to pdf$/) do
  sleep 4
  on_page(ReportPage).apo_export_to_pdf
  sleep 3
end

And(/^I export results to excel$/) do
  sleep 4
  on_page(ReportPage).apo_export_to_excel
  sleep 3
end

And(/^I export results to csv$/) do
  sleep 4
  on_page(ReportPage).apo_export_to_csv
  sleep 3
end

# Administrative record report
And(/^I navigate to administrative record report$/) do
  on_page(ReportPage).admin_record_report
end

And(/^I enter "([^"]*)" as investigation number$/) do |arg|
  on_page(ReportPage).admin_record_inv_num = arg
end

And(/^I multi select "([^"]*)" and "([^"]*)" and "([^"]*)" as investigation phase$/) do |arg1, arg2, arg3|
  multi_sel = @browser.select_list(:id, "query.investigationPhases")
      # on_page(ReportPage).admin_inv_phase
   # puts(multi_sel.options)

  multi_sel.options.each do |option|
    puts(option)
    if option.text == arg1 || option.text == arg2 || option.text == arg3
      # option.select(:control)
      option.click(:control)

    end
  end
end
#
# And(/^I multi select "([^"]*)" as investigation phase$/) do |arg1|
#   options = on_page(ReportPage).admin_inv_phase
#   options.each do |g|
#     if g.text == arg1
#       g.click
#       break
#     end
#   end
# end

And(/^I select "([^"]*)" as investigation status$/) do |arg|
  on_page(ReportPage).admin_record_inv_status = arg
end

And(/^I enter text "([^"]*)" as investigation title$/) do |arg|
  on_page(ReportPage).admin_record_inv_title = arg
end

Then(/^I see investigation number as "([^"]*)"$/) do |arg|
  sleep(20)
  @browser.text.should =~/#{arg}/
end

And(/^I select first result in investigation list$/) do
  @browser.link(:xpath, "id('investigationListDataTable')//tbody//tr[1]//td[1]//a").click
end

Then(/^I see total records as "([^"]*)"$/) do |arg|
  sleep 15
  @browser.text.should =~/#{arg}/
end

And(/^I view report in pdf format$/) do
  @browser.link(:id, "pdfExportButton").click
  sleep 4
end

And(/^I view report in excel format$/) do
  @browser.link(:id, "xlsExportButton").click
  sleep 4
end

And(/^I view report in csv format$/) do
  @browser.link(:id, "csvExportButton").click
  sleep 4
end

And(/^I navigate to next page for more results$/) do
  sleep 5
  @browser.link(:id, "pageButton_upper1").click
  sleep 10
end

And(/^I see document number as "([^"]*)"$/) do |arg|
  sleep(25)
  @browser.text.should =~/#{arg}/
end

And(/^I select sort property as "([^"]*)"$/) do |arg|
  on_page(ReportPage).admin_record_sort_property = arg
end

And(/^I select sort direction as "([^"]*)"$/) do |arg|
  on_page(ReportPage).admin_record_direction = arg
end

And(/^I select records per page as "([^"]*)"$/) do |arg|
  on_page(ReportPage).admin_record_per_page = arg
end

And(/^I multi select "([^"]*)" and "([^"]*)" and "([^"]*)" as investigation type$/) do |arg1, arg2, arg3|
  multi_sel = @browser.select_list(:id, "query.investigationTypes")
      # puts(multi_sel.options)
      multi_sel.options.each do |option|
        puts(option)
        if option.text == arg1 || option.text == arg2 || option.text == arg3
          # option.select(:control)
          option.click(:control)
        end
        end
end

# Investigation Report
And(/^I navigate to investigation report$/) do
  on_page(ReportPage).inv_report
end


And(/^I select security levels as "([^"]*)"$/) do |arg|
  on_page(ReportPage).inv_report_sec_level = arg
end

And(/^I multi select security levels as "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  multi_select = @browser.select_list(:id, "query.securityLevels")
  multi_select.options.each do |option|
  if option.text == arg1 || option.text == arg2 || option.text == arg3
    option.click(:control)
  end
  end
end

# User List Report
And(/^I navigate to user list report$/) do
  @browser.link(:id, "userListReportNavLink").click
end

And(/^I enter user ID as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_id = arg
end

And(/^I enter user list report first name as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_fn = arg
end

And(/^I enter user list report last name as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_ln = arg
end

And(/^I select user list report internal-external as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_lnt_ext = arg
end

And(/^I select user list report office-division as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_off_div = arg
end

And(/^I select user list report firm-org as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_firm_org = arg
end

And(/^I select user list report account status as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_acct_status = arg
end

And(/^I see office-division as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^I see firm-org as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end



# Authorities report
And(/^I navigate to authorities report$/) do
  @browser.link(:id, "authoritiesReportNavLink").click
end

And(/^I select authority group as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_aut_grp = arg
end

And(/^I select user list authorities as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_aut = arg
end

And(/^I select investigation authorities as "([^"]*)"$/) do |arg|
  on_page(ReportPage).user_list_inv_aut = arg
end

And(/^I multi select authority group as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  multi_sel = @browser.select_list(:id, "query.groups")
  # on_page(ReportPage).admin_inv_phase
  # puts(multi_sel.options)

  multi_sel.options.each do |option|
    puts(option)
    if option.text == arg1 || option.text == arg2
      # option.select(:control)
      option.click(:control)

    end
  end
end

And(/^I multi select user list authorities as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  multi_sel = @browser.select_list(:id, "query.authorities")
  # on_page(ReportPage).admin_inv_phase
  # puts(multi_sel.options)

  multi_sel.options.each do |option|
    puts(option)
    if option.text == arg1 || option.text == arg2
      # option.select(:control)
      option.click(:control)

    end
  end
end

And(/^I multi select investigation authorities as "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  multi_sel = @browser.select_list(:id, "query.investigations")
  # on_page(ReportPage).admin_inv_phase
  # puts(multi_sel.options)

  multi_sel.options.each do |option|
    puts(option)
    if option.text == arg1 || option.text == arg2
      # option.select(:control)
      option.click(:control)

    end
  end
end

# Document Verification And Destruction Report
And(/^I navigate to document verification and destruction report$/) do
  @browser.link(:id, "documentDestructionReportNavLink").click
end

And(/^I enter investigation number as "([^"]*)" to generate report$/) do |arg|
  on_page(ReportPage).dvdr_inv_no = arg
end

And(/^I select date criteria as "([^"]*)"$/) do |arg|
  @browser.select_list(:id, "offRecdDateComparisonType").send_keys (arg)
end

And(/^I enter official_received_from date as "([^"]*)"$/) do |arg|
  sleep 4
  @browser.input(:id, "offRecdDate1").send_keys (arg)
end

And(/^I enter official_received_to date as "([^"]*)"$/) do|arg|
  @browser.input(:id, "offRecdDate2").send_keys (arg)
end

And(/^I export report to pdf format$/) do
  @browser.link(:id, "pdfExportButton").click
end

And(/^I export report to excel format$/) do
  @browser.link(:id, "xlsExportButton").click
end

And(/^I export report to csv format$/) do
  @browser.link(:id, "csvExportButton").click
end

And(/^I enter document id for report as "([^"]*)"$/) do |arg|
  on_page(ReportPage).dvdr_doc_id = arg
end

And(/^I multi select investigation phase as "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  multi_select = @browser.select_list(:id, "query.investigationPhases")
  multi_select.options.each do |option|
    # puts(option)
   if  option.text == arg1 || option.text == arg2 || option.text == arg3
      option.click(:control)
   end
  end
end


And(/^I enter date selected as "([^"]*)"$/) do |arg|
  on_page(ReportPage).dvdr_date_selected = arg
end

And(/^I enter document to return as "([^"]*)"$/) do |arg|
  on_page(ReportPage).dvdr_doc_to_return = arg
end

And(/^I navigate to next page for more report results$/) do
  @browser.link(:id, "pageButton_lower1").click
end


# Document copies compliance report
And(/^I navigate to document copies compliance report$/) do
  @browser.link(:id, "documentCopiesComplianceReportNavLink").click
end

And(/^I select investigation phases as "([^"]*)"$/) do |arg|
  on_page(ReportPage).dccr_inv_phase = arg
end

And(/^I select report date criteria as "([^"]*)"$/) do |arg|
  @browser.select_list(:id, "officialReceivedDateComparisonType").send_keys (arg)
end

And(/^I enter report official_received_from date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "officialReceivedDate1").send_keys (arg)
end

And(/^I enter report official_received_to date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "officialReceivedDate2").send_keys (arg)
end

# Dockets performance audit report
And(/^I navigate to dockets performance audit report$/) do
  @browser.link(:id, "docketPerformancReportNavLink").click
end

And(/^I enter performance audit official received from date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "query.fromDate").send_keys (arg)
end

And(/^I enter performance audit official received to date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "query.toDate").send_keys (arg)
end

And(/^I select time range as "([^"]*)"$/) do |arg|
  on_page(ReportPage).dpar_range = arg
end

And(/^I select method filed as "([^"]*)"$/) do |arg|
  on_page(ReportPage).dpar_filed = arg
end


# Investigation Disposition Report
And(/^I navigate to investigation disposition report$/) do
  @browser.link(:id, "investigationDispositionReportNavLink").click
end

And(/^I select tentative termination date as "([^"]*)"$/) do |arg|
  @browser.select_list(:id, "tentativeTerminationComparisonType").send_keys (arg)
end

And(/^I enter tentative termination from date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "tentativeTerminationDate1").send_keys (arg)
end

And(/^I enter tentative termination to date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "tentativeTerminationDate2").send_keys (arg)
end

And(/^I select litigation hold date range as "([^"]*)"$/) do |arg|
  @browser.select_list(:id, "litigationHoldComparisonType").send_keys (arg)
end

And(/^I select litigation hold date from date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "litigationHoldDate1").send_keys (arg)
end

And(/^I select litigation hold date to date as "([^"]*)"$/) do |arg|
  @browser.input(:id, "litigationHoldDate2").send_keys (arg)
end

And(/^I select investigation phase for report as "([^"]*)"$/) do |arg|
  on_page(ReportPage).dccr_inv_phase = arg
end

And(/^I select disposition report investigation type as "([^"]*)"$/) do |arg|
  on_page(ReportPage).inv_type = arg
end

And(/^I select disposition report investigation status as "([^"]*)"$/) do |arg|
  on_page(ReportPage).admin_record_inv_status = arg
end

Then(/^I navigate to user audit access report$/) do
  @browser.link(:id,"userUserAuditAccessReportNavLink").click
end

# Motions Disposition Report

And(/^I navigate to motions disposition report page$/) do
  @browser.link(:id,"motionsDispositionReportNavLink").click
end


And(/^I select disposition status as "([^"]*)"$/) do |arg|
  @browser.select(:id,"query.dispositionStatus").send_keys(arg)
end