Feature: Authenticator
    Authenticator defines all the configuration needed to authenticate an user

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: Authenticator Resource Request
        When SuperAdmin requests authenticators

Scenario: Authenticator Specific CRUD Operations: Trial 1
        When SuperAdmin creates a Authenticator in authenticators:
			|status|description|name|
			|Disabled|zoology|nibble|

        When SuperAdmin chooses a random Authenticator from all authenticators
        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful

        When SuperAdmin updates the random object from authenticators:
			|status|description|
			|Disabled|atom|

        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Disabled|atom|

        When SuperAdmin deletes the random object from authenticators:
        Then the delete should be successful

        Scenario: Authenticator Specific CRUD Operations: Trial 2
        When SuperAdmin creates a Authenticator in authenticators:
			|status|description|name|
			|Disabled|kick|birch|

        When SuperAdmin chooses a random Authenticator from all authenticators
        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful

        When SuperAdmin updates the random object from authenticators:
			|status|description|
			|Active|kick|

        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Active|kick|

        When SuperAdmin deletes the random object from authenticators:
        Then the delete should be successful

        Scenario: Authenticator Specific CRUD Operations: Trial 3
        When SuperAdmin creates a Authenticator in authenticators:
			|status|description|name|
			|Disabled|lemon|kick|

        When SuperAdmin chooses a random Authenticator from all authenticators
        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful

        When SuperAdmin updates the random object from authenticators:
			|status|description|
			|Disabled|great|

        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Disabled|great|

        When SuperAdmin deletes the random object from authenticators:
        Then the delete should be successful

        Scenario: Authenticator Specific CRUD Operations: Trial 4
        When SuperAdmin creates a Authenticator in authenticators:
			|status|description|name|
			|Active|every|birch|

        When SuperAdmin chooses a random Authenticator from all authenticators
        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful

        When SuperAdmin updates the random object from authenticators:
			|status|description|
			|Active|yawp|

        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Active|yawp|

        When SuperAdmin deletes the random object from authenticators:
        Then the delete should be successful

        Scenario: Authenticator Specific CRUD Operations: Trial 5
        When SuperAdmin creates a Authenticator in authenticators:
			|status|description|name|
			|Candidate|osprey|wyvern|

        When SuperAdmin chooses a random Authenticator from all authenticators
        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful

        When SuperAdmin updates the random object from authenticators:
			|status|description|
			|Candidate|atom|

        When SuperAdmin asks for the random object from authenticators
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Candidate|atom|

        When SuperAdmin deletes the random object from authenticators:
        Then the delete should be successful

        