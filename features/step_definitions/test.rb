require 'watir-webdriver'

Given /I am on Google/ do
	@browser.goto 'http://www.google.com'
end

Given /^I am on the home page$/ do
	@browser.goto 'http://localhost:9393/'
end

When /I search for "(.*?)"/ do | searchTerm |
	@browser.text_field(:name => 'q').set "#{searchTerm}"
	@browser.button(:name => 'btnG').click
end

When /^I enter "(.*?)" into the name field$/ do | name |
	@browser.text_field(:name => 'name').set "#{name}"
	@browser.button(:id => 'submit').click
end

Then /"(.*?)" should appear/ do | checkText |
	@browser.text.include? "#{checkText}"
end