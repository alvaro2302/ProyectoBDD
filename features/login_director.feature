Feature: log in as a director user
	As a director
	I want to login to PEI
	So know the progress of full-time teachers

	Scenario: log in successfully as directorç
    Given I am on the PEI Online homepage and login
	When I change my name to "Alejandro Antonio"
    And announcements by mail to "10" days 
	Then you should see the changes on my profile