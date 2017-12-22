And(/^I go to developer tab$/) do
  on_page(RssFeed).developer
end

And(/^I navigate to rss feed under developers$/) do
  on_page(RssFeed).rss_feed
end

And(/^I navigate to rss feed generator$/) do
  @browser.link(:id, "rssLink").click
end

And(/^I select rss feed investigation type as "([^"]*)"$/) do |arg|
  on_page(RssFeed).rss_inv_type = arg
end

And(/^I add investigation type$/) do
  @browser.button(:id, "addInvestigationType").click
end

And(/^I remove investigation type$/) do
  # on_page(RssFeed).rss_inv_type_remove
  @browser.button(:name, "removeInvestigationType").click
end

And(/^I select on submission into edis$/) do
 @browser.checkbox(:id, "submissionNotification").click
end

And(/^I select on document approval$/) do
  @browser.checkbox(:id, "approvalNotification").click
end

And(/^I generate feed url$/) do
  @browser.button(:id, "generateRssFeedUrl").click
end

And(/^I navigate to find investigation$/) do
  @browser.button(:id, "findAddInvestigation").click
end

And(/^I select investigation type as "([^"]*)" on search for investigation page$/) do |arg|
  on_page(RssFeed).rss_add_inv_type = arg
end

And(/^I find investigation on search for investigation page$/) do
  @browser.button(:id, "addInvestigation").click
end

And(/^I select one of the investigation number$/) do
  sleep 2
  @browser.link(:id, "4297").click
end

And(/^I check on submission into edis$/) do
  sleep 2
  @browser.checkbox(:id, "submissionNotification").click
end

And(/^I check on document approval$/) do
  @browser.checkbox(:id, "approvalNotification").click
end

And(/^I copy url and paste in the browser for Byrd Amendment investigation type$/) do
  #url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:CRITERIONINVDEL:4297:PHASE:Final:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:CRITERIONINVDEL:4297:PHASE:Final:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I select the investigation number$/) do
  sleep 2
  @browser.link(:id, "1082").click
end

And(/^I edit feed details$/) do
  @browser.button(:name, "editFeedDetails").click
end

And(/^I select other investigation number$/) do
  sleep 2
  @browser.link(:id, "1084").click
end

And(/^I copy url and paste in the browser for Import Injury investigation type$/) do
  #url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:4:CRITERIONINVDEL:1082:PHASE:Review:CRITERIONINVDEL:1084:PHASE:Review:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:4:CRITERIONINVDEL:1082:PHASE:Review:CRITERIONINVDEL:1084:PHASE:Review:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I select investigation number for Rule Making$/) do
  sleep 2
  @browser.link(:id, "2392").click
end

And(/^I copy url and paste in the browser for Rule Making investigation type$/) do
  #url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:6:CRITERIONINVDEL:2392:PHASE:Final:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  url_string ="http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:6:CRITERIONINVDEL:2392:PHASE:Final:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I select investigation phase as "([^"]*)" on search for investigation page$/) do |arg|
  on_page(RssFeed).rss_add_inv_phase = arg
end

And(/^I select investigation status as "([^"]*)" on search for investigation page$/) do |arg|
  on_page(RssFeed).rss_add_inv_status = arg
end

And(/^I select investigation number for Sec 337$/) do
  sleep 3
  @browser.link(:id, "2430").click
end

And(/^I copy url and paste in the browser for Sec 337 investigation type$/) do
  #url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:8:CRITERIONINVDEL:2430:PHASE:Advisory2:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:8:CRITERIONINVDEL:2430:PHASE:Advisory2:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I copy url and paste in the browser for multi select investigation types$/) do
  #url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:CRITERIONAOIDEL:4:CRITERIONAOIDEL:6:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:4:CRITERIONAOIDEL:8:CRITERIONAOIDEL:6:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I click select from list radio button$/) do
  on_page(RssFeed).doc_type_radio_button_element.click
end

And(/^I multi select document types from list as "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  multi_sel = @browser.select_list(:id, "rssFeedInvestigationTypeList0.investigationDocumentTypeIds")
  multi_sel.options.each do |option|
    if option.text == arg1 || option.text == arg2 || option.text == arg3
      option.click(:control)
      end
  end
end

And(/^I copy url and paste in the browser for multi document types$/) do
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:82:210:232:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I select the other investigation number$/) do
  sleep 2
  @browser.link(:id, "1084").click
end

And(/^I copy url and paste in the browser by multi selecting add investigation type$/) do
  #url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:4:CRITERIONINVDEL:1082:PHASE:Review:CRITERIONINVDEL:1084:PHASE:Review:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:82:210:232:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I remove added investigation$/) do
  @browser.button(:name, "removeInvestigation").click
end


And(/^I copy url and paste in the browser by not selecting all document types for investigation type$/) do
  #url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:82:210:232:CRITERIONINVDEL:1082:PHASE:Review:CRITERIONINVDEL:1084:PHASE:Review:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:82:210:232:CRITERIONINVDEL:1082:PHASE:Review:CRITERIONINVDEL:1084:PHASE:Review:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I navigate to rss feed without signing in$/) do
  sleep 2
  @browser.link(:id, "rssLink").click
end

And(/^I copy url and paste in the browser$/) do
  #url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:82:210:232:CRITERIONINVDEL:1082:PHASE:Review:CRITERIONINVDEL:1084:PHASE:Review:CRITERIONANOTIFY:true"
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:2:82:210:232:CRITERIONINVDEL:1082:PHASE:Review:CRITERIONINVDEL:1084:PHASE:Review:CRITERIONANOTIFY:true"
  @browser.goto url_string
end

And(/^I enter investigation number on add-edit page as "([^"]*)"$/) do |arg|
  on_page(RssFeed).add_edit_inv_no = arg
end

And(/^I select investigation number$/) do
  sleep 3
  @browser.link(:id, "2160").click
end

And(/^I copy url and paste in the browser for Tariff Affairs & Trade Agreements investigation type$/) do
  url_string = "http://prepres0.edis3.usitc.gov/edis3-ui/rss/render.rss/?criteria=CRITERIONAOIDEL:20:CRITERIONINVDEL:2160:PHASE:Final:CRITERIONSNOTIFY:true:CRITERIONANOTIFY:true"
  @browser.goto url_string
end