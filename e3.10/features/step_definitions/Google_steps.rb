Given /^I navigate to home page$/ do
  puts("hello")
  visit_page(Upgrade)
end

#Given /^I am on EDIS home page$/ do
#  visit_page(EdisPage)
#end

And(/^I enter "([^"]*)"$/) do |arg|
  on_page(Upgrade).google_search = arg
end

And(/^I search$/) do
  on_page(Upgrade).search
end

And(/^I go to first link$/) do
  on_page(Upgrade).first_link
end

When(/^I navigate to sign in$/) do
  on_page(Upgrade).sign_in
end

