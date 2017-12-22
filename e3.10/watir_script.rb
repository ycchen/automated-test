# require 'watir-webdriver'
require 'watir'

# browser = Watir::Browser.new :chrome# should open a new Chrome window
# browser = Watir::Browser.new :firefox# should open a new Firefox window

# browser.goto 'http://nitrowriters.com/form/form.html'
# browser.goto 'http://google.com'

options = Selenium::WebDriver::Chrome::Options.new
# options.add_argument("--proxy-server=localhost:3128")
browser = Watir::Browser.new :chrome, options: options

# Firefox
# profile = Selenium::WebDriver::Firefox::Profile.new
# profile.proxy = Selenium::WebDriver::Proxy.new http: 'localhost:3128', ssl: 'localhost:3128'
# browser = Watir::Browser.new :firefox, profile: profile

# browser.goto 'http://watir.com'
# browser.link(text: 'documentation').click
# puts browser.title
# => 'Documentation  Watir Project...'

# browser.goto 'https://htstestinternal.usitc.gov'
browser.goto 'http://prepres0.edis3.usitc.gov/edis3-ui/'
# browser.

browser.close