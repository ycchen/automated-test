Feature: guru99 Demopage Login
	In order to Login in Demopage we have to enter login details

	Scenario: Register on Guru99 Demopage without email

	Given I am on the Guru99 homepage

	When enter blank details for Register

	Then error email shown