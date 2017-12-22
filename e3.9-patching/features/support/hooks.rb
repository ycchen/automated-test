require 'watir-webdriver'



Before do
   # @browser = Watir::Browser.new :firefox
   @browser = Watir::Browser.new :chrome
   # @browser = Watir::Browser.new :ie
  @browser.driver.manage.window.maximize
end


After do
    # @browser.close
end