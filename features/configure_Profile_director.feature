Feature: configure profile in Director account
   As a Director account
   I want configure my profile 
   so I change my profile details

	Scenario: configure the profile Director username 
    Given I am on the PEI Online homepage and login
	When I change my name to "Alejandro Antonio"
    And announcements by mail to "10" days 
	Then you should see the changes on my profile