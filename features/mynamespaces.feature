Feature: MyNamespaces 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Get MyNamespaces 
		When SuperAdmin requests mynamespaces
		Then the request should be successful

