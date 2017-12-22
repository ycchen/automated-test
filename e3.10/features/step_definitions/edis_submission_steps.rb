When /^I go to electronic page$/ do
  on_page(Submission_Page).sub_page
end

When(/^I navigate to submission tab$/) do
  on_page(Submission_Page).sub_page
end

And(/^I submit and continue$/) do
  sleep(10)
  on_page(Submission_Page).submit_continue
end

And(/^I confirm submission$/) do
  sleep(10)
  @browser.div(:class, "modal-footer").button(:class, "btn btn-primary btn-ok").click
end

And(/^I should not see "([^"]*)" on the page$/) do |text|
  sleep(35)
  @browser.text.should_not =~/#{text}/
end

And(/^I select "([^"]*)" as investigation type for submission$/) do |arg|
  sleep(5)
   # @browser.div(:class, 'col-md-7').select(:id, 'investigationType').click
  on_page(Submission_Page).sub_inv_type = arg

end

And(/^I search for investigation number "([^"]*)"$/) do |arg|
  @browser.div(:id, 'invesResultsTable_filter').input(:class, 'form-control input-sm') == arg
end

And(/^I select "([^"]*)" as document type for filing$/) do |arg|
  # @browser.div(:class, 'col-md-7').select(:id, 'documentType').option(:value, '210') == arg
  sleep 20
  on_page(Submission_Page).sub_doc_type = arg
  # select = @browser.select_list(:id, "documenType")
  # select.options.each do |list|
  #   if list.text == arg then
  #     list.click(:control)
  #   end
  #   end
end

And(/^I select document security level as "Yes"$/) do
  sleep 2
  @browser.label(:id, 'docHasCBIButton').click
end

And(/^I select security level for filing as "([^"]*)"$/) do |arg|
  on_page(Submission_Page).sec_level = arg
end

And(/^I select document security level as "No"$/) do
  sleep 5
  @browser.div(:class, 'btn-group').label(:id, 'docIsPubButton').click
end

And(/^I select document public version as "Yes"$/) do
  sleep 2
    # @browser.div(:class, 'btn-group').label(:id, 'publicVersionBtn1').click
   x = @browser.label(:id, "publicVersionYesButton").click
  # puts(x.tag_name)
  #  puts(x.text)
end

And(/^I select document public version as "No"$/) do

  # @browser.div(:class, 'btn-group').label(:id, 'publicVersionBtn2').click
   @browser.label(:id, "publicVersionNoButton").click
end

And(/^I search for an investigation "([^"]*)"$/) do |arg|
  sleep 3
  @browser.div(:id, "invesResultsTable_filter").input(:class, "form-control input-sm").send_keys(arg)
end

And(/^I select one of the investigation$/) do
  sleep 3
   # @browser.div(:xpath, "class('dataTables_scrollBody')//table//thead//tbody//tr[1]").click
  @browser.table(:id, 'invesResultsTable').td(:class, 'invTitleC').click
  # @browser.tr(:id, '103').click
end


And(/^I select document type for attached document as "Correspondence - USITC"$/) do |arg|

  @browser.div(:class, 'col-md-7').select(:id, 'documentType') == arg
end

And(/^I enter title for document as "([^"]*)"$/) do |arg|
  sleep 7
  on_page(Submission_Page).sub_title = arg
end

And(/^I enter on behalf of "([^"]*)"$/) do |arg|
  sleep 1
  on_page(Submission_Page).sub_behalf = arg
end


And(/^I add file "([^"]*)"$/) do |file_name|
  sleep 2
  on_page(Submission_Page).attach = Dir::pwd + '/features/attachment_docs/' + file_name
end

And(/^I enter text for first attachment as "([^"]*)"$/) do |arg|
  sleep 9
  @browser.input(:id, "editableSections0.section.title").send_keys(arg)
end

And(/^I enter text for second attachment as "([^"]*)"$/) do |arg|
  sleep 7
  @browser.input(:id, "editableSections1.section.title").send_keys(arg)
end

And(/^I enter text for third attachment as "([^"]*)"$/) do |arg|
  sleep 5
  @browser.input(:id, "editableSections2.section.title").send_keys(arg)
end

And(/^I enter text for fourth attachment as "([^"]*)"$/) do |arg|
  sleep 5
  @browser.input(:id, "editableSections3.section.title").send_keys(arg)
end

And(/^I select investigation phase for submission as "([^"]*)"$/) do |arg|
  sleep 6
  on_page(Submission_Page).sub_inv_phase = arg
end


And(/^I navigate to next page$/) do
  Sleep 5
  @browser.link(:href, "#").click
  #@broswer.link(:text, "Next").click


end

And(/^I select "([^"]*)" entries to display$/) do |arg|
  sleep 1
  on_page(Submission_Page).sub_inv_entries = arg
end

And(/^I go to previous page$/) do
  sleep 5
   @browser.link(:id, "action-previous").click
   # on_page(Submission_Page).sub_previous
end

And(/^I file wavier form$/) do
  sleep 1
  on_page(Submission_Page).sub_waiver
end

And(/^I remove attached file$/) do
  sleep 1
  @browser.input(:id, "editableSections1.delete1").click
end

And(/^I navigate to investigation type$/) do
  sleep 1
  @browser.link(:href, "#stepInvestigation_Type").click
end

And(/^I navigate to document type$/) do
  sleep 1
  @browser.link(:href, "#stepDocument_Type").click
end

And(/^I navigate to investigation$/) do
  sleep 1
  @browser.link(:href, "#stepInvestigation").click
end

And(/^I select investigation for submission$/) do
  @browser.table(:xpath, "id('invesResultsTable')//tbody//tr").click
end


And(/^I select security level for submission as "([^"]*)"$/) do |arg|
  @browser.select_list(:id, 'securityLevelSelect').send_keys(arg)
end

And(/^I navigate to last page$/) do

end

And(/^I click No$/) do
  sleep 2
  @browser.label(:id, "notNewRequestButton").click
end

And(/^I select No$/) do
  @browser.label(:id => "notNewRequestButton").click
  sleep 1
end

And(/^I click Submit on page$/) do
  on_page(Submission_Page).submit
end

And(/^I confirm submission on page$/) do
  on_page(Submission_Page).confirm
end