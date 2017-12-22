require "watir-webdriver/wait"

Given /^I am on EDIS home page$/ do
    visit_page(EdisPage)
end

When /^I navigate to login screen$/ do
  on_page(EdisPage).home_page_login
end

And /^enter username (.*)$/ do |name|
    on_page(EdisPage).username = name
   # @browser.input(:id ,"j_username").send_keys(name)
end


And /^enter password (.*)$/ do |pw|
  on_page(EdisPage).password = pw
end

Given /^I navigate to edis main page$/ do
  step %{I am on EDIS home page}
  step %{I navigate to login screen}
  step %{enter username bcaesar}
  step %{enter password Testuser1234@}
  #step %{enter security_word edis3}
  step %{I login}
end

Given /^I navigate to edis main page with internal user login$/ do
  step %{I am on EDIS home page}
  step %{I navigate to login screen}
  step %{enter username internaluser}
  step %{enter password Testuser1234@}
  #step %{enter security_word edis3}
  step %{I login}
end

And /^I login$/ do
  on_page(EdisPage).signin

end

Then(/^I should see "([^"]*)" on the page$/) do |text|
   #wait_until_present
   sleep 25
   @browser.text.should =~/#{text}/
  # @browser.when_present.text("#{text}")
end

Then(/^I should see "([^"]*)" on the page now$/) do |text|
  #wait_until_present
  sleep(120)
  @browser.text.should =~/#{text}/
  # @browser.when_present.text("#{text}")
end

And(/^I should see "([^"]*)" on the page whehn element present$/) do |text|
  sleep(120)
  @browser.text.should =~/#{text}/
end

When /^I logout$/ do
  on_page(EdisPage).logout
end


#TO find Image on a page

#Then /^I should see the image "(.+)"$/ do |image|
#  if page.respond_to? :should
#    page.should have_content(image)
#  else
#    assert page.has_content?(image)
#  end
#end

#Then /^I should see the image "(.+)"$/ do |image|
#  html = Nokogiri::HTML(response.body)
#  tags = html.xpath('//img[@src="/public/images/foo.png"]')
#  # tags.length.should eql(num_of_images)
#end

#Then /^I should see the image "(.+)"$/ do |image|
#  page.should have_xpath("//img[@src=\"/public/images/#{image}\"]")
#end

And(/^I navigate to register page$/) do
  on_page(EdisPage).register_link
end

And(/^I accept user arguments$/) do
  on_page(EdisPage).register_accept
end

And(/^I enter first name as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_fn = arg
end

And(/^I enter last name as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_ln = arg
end

And(/^I enter office-division as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_off_div = arg
end

And(/^I enter email address as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_email = arg
end

And(/^I enter user id$/) do
  random_userId = ('a'..'z').to_a.shuffle.first(8).join
  on_page(EdisPage).register_user_id = random_userId
  sleep 10
end

And(/^I enter user id as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_user_id = arg
end

And(/^I enter password as "([^"]*)"$/) do |pw|
  # random_userId = ('0'..'z').to_a.shuffle.first(8).join
  on_page(EdisPage).register_password = pw
end

And(/^I enter confirm password as "([^"]*)"$/) do |confirm_pw|
  on_page(EdisPage).register_confirm_pwd = confirm_pw
end

And(/^I select first question as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_first_ques = arg
end

And(/^I enter first question answer as "([^"]*)"$/) do |arg|
on_page(EdisPage).register_first_ques_ans = arg
end

And(/^I select second question as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_second_ques = arg
end

And(/^I enter second question answer as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_second_ques_ans = arg
end

And(/^I register$/) do
  on_page(EdisPage).register_button
end

And(/^I confirm registration$/) do
  on_page(EdisPage).register_confirm_button
end

And(/^I reset on registration page$/) do
  on_page(EdisPage).register_reset_button
end

# forgot password link on login screen
And(/^I navigate to forgot password link$/) do
  on_page(EdisPage).forgot_pw_link
end

And(/^I get information for the user id$/) do
  on_page(EdisPage).get_info
end

And(/^I enter first question answer to validate as "([^"]*)"$/) do |arg|
  sleep 2
  on_page(EdisPage).forgot_pw_first_ques_ans = arg
end

And(/^I enter second question answer to validate as "([^"]*)"$/) do |arg|
  on_page(EdisPage).forgot_pw_second_ques_ans = arg
end

And(/^I validate$/) do
  on_page(EdisPage).forgot_pw_validate
end

And(/^I enter new password as "([^"]*)"$/) do |arg|
  sleep 2
  on_page(EdisPage).register_password = arg
end

And(/^I confirm new password as "([^"]*)"$/) do |arg|
  on_page(EdisPage).register_confirm_pwd = arg
end

And(/^I reset password$/) do
  on_page(EdisPage).reset_pwd
end
