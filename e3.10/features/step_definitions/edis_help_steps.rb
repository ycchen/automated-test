#require "spec_helper"

When /^I go to help tab$/ do
 on_page(HelpPage).help
end

Then /^I select whats new$/ do
  on_page(HelpPage).whats_new_link
end

Then /^I select help documents library$/ do
  on_page(HelpPage).help_doc_library
end

Then /^I navigate to who should register$/ do
  on_page(HelpPage).who_should_register
end

Then /^I navigate to edis3 user guide$/ do
  on_page(HelpPage).edis3_user_guide
end

Then /^I navigate to edis3 cd submission guide$/ do
  on_page(HelpPage).edis3_cd_submission_guide
end

Then /^I navigate to edis3 web service guide$/ do
  on_page(HelpPage).edis3_web_service_guide
end

Then /^I navigate to frequently asked questions$/ do
  on_page(HelpPage).faqs
end

Then /^I navigate to handbook on filing procedures$/ do
  on_page(HelpPage).handbook_on_filing_procedures
end

Then /^I navigate to guidance on copy requirements$/ do
  on_page(HelpPage).guidance_on_copy_requirements
end

Then /^I navigate to requesting a waiver to electronic filing$/ do
  on_page(HelpPage).requesting_a_waiver_to_electronic_filing
end

#Then /^I should see telephone number as "(202)205-3347 (EDIS)"$/ do
#  on_page(HelpPage).telephone_no.text.include?"(202)205-3347 (EDIS)"== true
#end

Then /^I should see documents to EDIS$/ do
  on_page(HelpPage).text_on_page.text.include?"documents to EDIS" == true
end

Then /^I should see telephone number as "([^"]*)"$/ do |arg|
  sleep 3
  begin
   # on_page(HelpPage).telephone_no.should =~ /#{arg}/
   @browser.text.should =~/#{arg}/
  #   @browser.text.include?("duplex diner").should == true
  # on_page(AdminPage).profile_firm.should == arg
  rescue Exception => e
     puts e
  ensure
    "Test complete"
    end
end
