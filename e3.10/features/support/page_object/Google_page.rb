require 'page-object'
  require 'watir-webdriver'

  class Upgrade
    include PageObject
    page_url'http://google.com'
    text_field(:google_search, :id => "gbqfq")
    button(:search, :id => "gbqfb")
    link(:first_link, :xpath => "//*[@id=rso]//li[1]//div//h3")
    link(:sign_in, :id => "gb_70")
  end