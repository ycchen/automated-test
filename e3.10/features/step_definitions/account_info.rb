And(/^I go to username menu tab$/) do
  on_page(Account_Info).user_name
end

And(/^I navigate to user preferences$/) do
  on_page(Account_Info).user_pref
end

And(/^I see first name as "([^"]*)"$/) do |arg|
  sleep(2)
  puts "#{arg}"

  # @browser.text.contains?(arg).should == true

  @browser.text.include?("arg").shouldnot == true
  # @browser.text.should =~/#{arg}/
end



And(/^I navigate to change password$/) do
  on_page(Account_Info).change_pw
end

# User preference
And(/^I enter user first name as "([^"]*)"$/) do |arg|
  sleep 2
  on_page(Account_Info).user_pref_first_name = arg
end

And(/^I enter user last name as "([^"]*)"$/) do |arg|
  sleep 2
  on_page(Account_Info).user_pref_last_name = arg
end

And(/^I enter user email id as "([^"]*)"$/) do |arg|
  on_page(Account_Info).user_pref_email = arg
end

And(/^I select first security question as "([^"]*)"$/) do |arg|
  on_page(Account_Info).user_pref_sec_q1 = arg
end

And(/^I enter first security answer as "([^"]*)"$/) do |arg|
  on_page(Account_Info).user_pref_sec_ans1 = arg
end

And(/^I select second security question as "([^"]*)"$/) do |arg|
  on_page(Account_Info).user_pref_sec_q2 = arg
end

And(/^I enter second security answer as "([^"]*)"$/) do |arg|
  on_page(Account_Info).user_pref_sec_ans2 = arg
end

And(/^I update user preferences$/) do
  on_page(Account_Info).user_pref_update
end

And(/^I reset user preferences$/) do
  on_page(Account_Info).user_pref_reset
end