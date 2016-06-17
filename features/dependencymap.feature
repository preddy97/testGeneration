Feature: DependencyMap 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Get DependencyMap 
		When SuperAdmin requests dependencymaps
		Then the request should be successful

