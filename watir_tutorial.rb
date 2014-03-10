# http://watir.com/examples/
require 'watir'
include Watir
require 'watir-webdriver'

browser = Browser.new :firefox
website = 'http://bit.ly/watir-example'
browser.goto(website)
browser.text_field(:name, 'entry.0.single').set 'Watir'
browser.textarea(name: 'entry.1.single').set('I come here from Australia. \n The weather is great here')
browser.radio(id: 'group_2_1').set
browser.checkbox(value: 'Ruby').set
browser.checkbox(value: 'Python').set(true)
browser.checkbox(value: 'Python').clear
browser.checkbox(value: 'Ruby').set(false)
puts browser.select_list(name: 'entry.6.single').options
browser.select_list(name: 'entry.6.single').select 'Chrome'
puts browser.text.include? 'Your response has been recorded.'
puts browser.title == 'Thanks!'
browser.button(name: 'submit').click
browser.close
