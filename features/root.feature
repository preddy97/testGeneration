Feature: Root 
	Background:
		Given I'm going to use the API: localhost:8080
		And the following authentications:
		| name   | namespace  |
		| Pranav | SuperAdmin |
	Scenario: Root Get
		When SuperAdmin requests the root 
		Then the request should be successful

