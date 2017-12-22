And(/^I check one of the release date to reprint$/) do
  on_page(ApoReleasePage).apo_release_element.click
end

And(/^I reprint a release$/) do
  @browser.button(:id, "reprintFinalApoRelease").click
end

And(/^I click on existing drafted release$/) do
  @browser.link(:class, "edit-draftRelease").click
end

And(/^I create new release$/) do
  @browser.button(:id, "createApoRelease").click
end

And(/^I uncheck APO release$/) do
  on_page(ApoReleasePage).apo_release_uncheck_element.click
end

And(/^I uncheck security$/) do
  on_page(ApoReleasePage).security_uncheck_element.click
end

And(/^I uncheck status$/) do
  on_page(ApoReleasePage).status_uncheck_element.click
end

And(/^I filter$/) do
  # on_page(ApoReleasePage).filter
  @browser.input(:name, "filterEligibleDocuments").click
end

And(/^I enter release title as "(.*)"$/) do |arg|
  on_page(ApoReleasePage).release_title = arg
end

And(/^I select one of the document$/) do
  @browser.link(:class, "edit-document").click
end

And(/^I return to release info$/) do
  @browser.button(:name, "returnToReleaseSummary").click
end

And(/^I create releases media$/) do
  @browser.button(:id, "showCreateReleaseMedia").click
end

And(/^I enter "([^"]*)" copies$/) do |arg|
  on_page(ApoReleasePage).release_media = arg
end

And(/^I submit release media$/) do
  @browser.button(:name, "createReleaseMedia").click
end

And(/^I select document id to navigate to document editor page$/) do
  @browser.link(:class, "edit-document").click
end

And(/^I select document "72037" to I navigate to document editor page$/) do
  @browser.link(:id, "72037").click
end

And(/^I select document "161588" and I navigate to document editor page$/) do
  @browser.link(:id, "161588").click
end

And(/^I check APO release on document editor page$/) do
  @browser.input(:id, "doc.apoReleaseFlag1").click
end

And(/^I save and return$/) do
  @browser.button(:id, "saveDocument").click
end

And(/^I check APO release that shows up in list to select that document$/) do
  on_page(ApoReleasePage).apo_release_uncheck_element.click
end

And(/^I select one of the Apo qualified document$/) do
  on_page(ApoReleasePage).apo_doc_list_sel_element.click
end

And(/^I submit release$/) do
  @browser.input(:id, "submitApoReleaseBtn").click
end

And(/^I should see document id as "([^"]*)" on the Apo release details page$/) do |arg|
  sleep(2)
   @browser.text.should =~/#{arg}/
 end

And(/^I should see Apo release as "([^"]*)" on the Apo release details page$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^I should see processing status as "([^"]*)" on the Apo release details page$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^I delete draft release$/) do
  @browser.button(:id, "deleteDraftApoRelease").click
end

And(/^I modify doc list$/) do
  @browser.input(:name, "editDraftApoRelease").click
end

And(/^I select "161588" one of the Apo qualified document$/) do
  @browser.link(:id, "161588").click
end

And(/^I should see doc type as "([^"]*)" on the Apo release details page$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^I finalize$/) do
  @browser.button(:id, "showFinalizeModal").click
end

And(/^I finalize apo release$/) do
  @browser.input(:name, "finalizeApoRelease").click
end

And(/^I check second release date$/) do
  on_page(ApoReleasePage).apo_release1_element.click
end

And(/^I check third release date$/) do
  on_page(ApoReleasePage).apo_release2_element.click
end

And(/^I click on release date link$/) do
  @browser.link(:id, "3330").click
end

And(/^click on document status to enable$/) do
@browser.link(:id, "docStatusEnabler").click
end

And(/^change the status to "([^"]*)"$/) do |arg|
  sleep 3
  on_page(ApoReleasePage).apo_doc_status = arg
end

And(/^I enter document date$/) do
@browser.span(:class, "glyphicon-calendar glyphicon").click
end


And(/^I select phase as "([^"]*)"$/) do |arg|
  on_page(ApoReleasePage).apo_release_phase = arg
end

And(/^I check APO release$/) do
  on_page(ApoReleasePage).apo_release_uncheck_element.click
end

And(/^I enter random release title$/) do
  on_page(ApoReleasePage).release_title = rand(1..1000)
end


And(/^I select second Apo qualified document$/) do
  on_page(ApoReleasePage).apo_second_doc_list_sel_element.click
end

And(/^I select third Apo qualified document$/) do
  on_page(ApoReleasePage).apo_third_doc_list_sel_element.click
end

And(/^I select "([^"]*)" entries to show$/) do |arg|
  sleep 2
  on_page(ApoReleasePage).apo_entries = arg
end


And(/^I cancel$/) do
  @browser.button(:id, "cancelEditing").click
end