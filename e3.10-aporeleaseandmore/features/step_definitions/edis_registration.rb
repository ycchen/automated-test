And(/^I navigate to register page$/) do
  on_page(Registration_Page).register
end

And(/^I accept terms of user agreemnet$/) do
  @browser.link(:xpath => "//*[@id='termsCondnId']/div/div/div[2]/div/div/div/a[2]").click
  sleep 1
end

And(/^I enter first name as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).first_name = arg
end

And(/^I enter middle name as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).middle_name = arg
end

And(/^I enter last name as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).last_name = arg
end

And(/^I select office as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).office = arg
end

And(/^I enter email address as "([^"]*)" to register new user$/) do |arg|
  on_page(Registration_Page).email = arg
end

And(/^I enter Login ID to register new user$/) do
  sleep 1
  #random_userId = ('a'..'z').to_a.shuffle.first(8).join
  random_userId = ('Testuser').to_s + ('0'..'9').to_a.shuffle.first(8).join
  userIDFile = File.new("Test_userid.txt", "w")
  userIDFile.write(random_userId)
  userIDFile.close()
  on_page(Registration_Page).userid = random_userId
end

And(/^I enter password as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).password = arg
end

And(/^I enter confirm password as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).confirmPassword = arg
end

And(/^I select Security Question 1 as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).securityQuestion1 = arg
end

And(/^I enter Answer 1 as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).answer1 = arg
end

And(/^I select Security Question 2 as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).securityQuestion2 = arg
end

And(/^I enter Answer 2 as "([^"]*)"$/) do |arg|
  on_page(Registration_Page).answer2 = arg
end

And(/^I click register$/) do
  @browser.link(:xpath => "//*[@id='userregisterbtn']").click
end

And(/^I confirm registration$/) do
  @browser.link(:xpath => "//*[@id='confRegisterbtn']").click
end