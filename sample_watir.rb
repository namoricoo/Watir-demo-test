require 'watir'

browser = Watir::Browser.start 'http://travel.agileway.net/login'
browser.text_field(:id, 'username').set('agileway')
browser.text_field(:id, 'password').set('test')
browser.button(:value, 'Sign in').click
browser.link(:text, 'Sign off').click
