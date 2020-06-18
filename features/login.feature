Feature: Test Login User DTC and Director
	As a User
	I want to login 
	So I can enter my account

	Scenario: Login success
	When User enter the valid credentials
	And Click on Login
	Then Home Page should be displayed