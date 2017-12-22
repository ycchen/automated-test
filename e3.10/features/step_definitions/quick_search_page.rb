And(/^I enter keyword "([^"]*)"$/) do |arg|
  on_page(QuickSearch).quick_keyword = arg
end

And(/^I navigate to first result$/) do
  sleep 5
 @browser.link(:xpath => "//*[@id='boundlist-1012-listEl']/ul/li[1]/div/div[2]/b/a").click
  end

And(/^I navigate to first result when searched for investigation number$/) do
  sleep(10)
@browser.link(:xpath => "//*[@id='boundlist-1012-listEl']/ul/li[1]/div/div[2]/b/a").click
end

Then(/^I see document id as "([^"]*)"$/) do |arg|
  sleep(2)
     @browser.text.should =~/#{arg}/
   # expect(@browser.text).to be =~/#{arg}/
end

And(/^document title as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^security as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^document type as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^investigation number as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^investigation title as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^investigation phase as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^investigation type as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^investigation status as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^filed by as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^firm organisation as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^on behalf of "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^document date "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^system received date as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^official received date as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^section 337 process as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^attachment id as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^attachment title as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^attachment size as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

And(/^attachment create date as "([^"]*)"$/) do |arg|
  @browser.text.should =~/#{arg}/
end

