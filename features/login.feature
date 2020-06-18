Feature: Test Login User DTC and Director
	As a User
	I want to login 
	So I can enter my account

Background: 
	Given  in the page login 
Scenario: log in successfully as director
	
	When enter username and password for Director
	Then Home Page should be displayed for Director


Scenario: log in successfully as full time teacher DTC
	When enter username and password for DTC
	Then Home Page should be displayed for DTC
