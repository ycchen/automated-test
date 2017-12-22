And(/^I go to Admin tab$/) do
  on_page(AdminPage).admin_dropdown
end

And(/^I select Create Firm from the admin tab$/) do
  on_page(AdminPage).createFirm
end

And(/^I click Submit to confirm Firm creation$/) do
  on_page(AdminPage).submit
end

And(/^I enter firm name as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_name = arg
end

And(/^I enter firm address as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_address = arg
end

And(/^I enter firm suite as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_address2 = arg
end

And(/^I enter city as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_city = arg
end

And(/^I select state as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_state = arg
end

And(/^I enter zip code as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_zipCode = arg
end

And(/^I select country as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_country = arg
end

And(/^I enter location code as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_locationCode = arg
end

And(/^I enter contact email as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_email = arg
end

And(/^I enter website as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_website = arg
end

And(/^I enter telephone number as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_telephone = arg
end

And(/^I enter fax number as "([^"]*)"$/) do |arg|
  on_page(AdminPage).firm_fax = arg
end