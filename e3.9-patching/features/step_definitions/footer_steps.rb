#Info
When /^I navigate to whats new in edis link$/ do
  on_page(FooterPage).info_first_link
end

When /^I navigate to handbook on filling$/ do
  on_page(FooterPage).info_second_link
end

When /^I navigate to guidance on copy rqmts$/ do
  on_page(FooterPage).info_third_link
end

When /^I navigate to e-filing waiver guidance$/ do
  on_page(FooterPage).info_fourth_link
end

#Help
When /^I navigate to edis3 user guide link$/ do
  on_page(FooterPage).help_first_link
end

When /^I navigate to edis3 web service guide link$/ do
  on_page(FooterPage).help_second_link
end

When /^I navigate to all edis help documents link$/ do
  on_page(FooterPage).help_third_link
end

When /^I navigate to advanced search link$/ do
  on_page(FooterPage).quick_links_first_link
end

When /^I navigate to efile documents link$/ do
  on_page(FooterPage).quick_links_second_link
end