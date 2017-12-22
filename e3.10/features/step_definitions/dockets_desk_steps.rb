And(/^I go to dockets desk tab$/) do
  on_page(DocketsDesk).doc_desk
end

And(/^I navigate to accept documents page$/) do
  on_page(DocketsDesk).accept_doc
end

And(/^I enter document id "([^"]*)"$/) do |arg|
  on_page(DocketsDesk).accept_doc_id = arg
end

And(/^I enter paper copies provided as "([^"]*)"$/) do |arg|
  on_page(DocketsDesk).accept_paper_copies = arg
end

And(/^I retrieve the document metadata$/) do
  on_page(DocketsDesk).retrieve
end

And(/^I confirm document$/) do
  on_page(DocketsDesk).confirm_doc
end

And(/^I navigate to track documents$/) do
  on_page(DocketsDesk).track_doc
end

And(/^I select tracking location as "([^"]*)"$/) do |arg|
  on_page(DocketsDesk).track_loc = arg
end

And(/^I enter track document id "([^"]*)"$/) do |arg|
  on_page(DocketsDesk).track_doc_id = arg
end

And(/^I submit document$/) do
  on_page(DocketsDesk).track_submit
end


And(/^I reset options selected$/) do
  @browser.button(:id, "resetDocument").click
end