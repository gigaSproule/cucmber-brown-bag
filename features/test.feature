Feature: Test
	I like to test cucumber with Watir
	
	Scenario: Go to Google and search for Test
		Given I am on Google
		When I search for "Test"
		Then "test.org.uk" should appear

	Scenario: Go to Google and search for Wolverhampton
		Given I am on Google
		When I search for "Wolverhampton"
		Then "www.wolves.co.uk" should appear

	Scenario: Go to home page and submit the name as Ben
		Given I am on the home page
		When I enter "Ben" into the name field
		Then "Ben" should appear