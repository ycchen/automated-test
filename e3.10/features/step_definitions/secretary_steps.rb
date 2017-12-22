And(/^I navigate to secretary tab$/) do
  on_page(Secretary).secretary_tab
end

And(/^I navigate to cover sheet exception$/) do
  on_page(Secretary).cover_sheet
end

And(/^I enter document id to manage Cover Sheet Filing Exception status "([^"]*)"$/) do |arg|
  on_page(Secretary).cover_sheet_doc_id = arg
end

And(/^I retrieve document status$/) do
  on_page(Secretary).retrieve_data
end

And(/^I approve cover sheet$/) do
  on_page(Secretary).cover_sheet_approve
end

And(/^I deny cover sheet$/) do
  on_page(Secretary).cover_sheet_deny
end