require 'watir'
include Watir
require 'logger'

browser = Browser.new
test_site = 'http://www.microsoft.com/en-us/default.aspx'
browser.goto(test_site)
Wait.until { browser.title.include?('Devices and Services') }
# Logger.info(("=> PASS. Window title:") + browser.title)
