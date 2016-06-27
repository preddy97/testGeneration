Feature: Namespace
    Namespace attached to an user

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: Namespace Resource Request
        When SuperAdmin requests namespaces

Scenario: Namespace Specific CRUD Operations: Trial 1
        When SuperAdmin creates a Namespace in namespaces:
			|status|description|name|
			|Disabled|vacuous|query|

        When SuperAdmin chooses a random Namespace from all namespaces
        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful

        When SuperAdmin updates the random object from namespaces:
			|status|description|
			|Disabled|osprey|

        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Disabled|osprey|

        When SuperAdmin deletes the random object from namespaces:
        Then the delete should be successful

        Scenario: Namespace Specific CRUD Operations: Trial 2
        When SuperAdmin creates a Namespace in namespaces:
			|status|description|name|
			|Candidate|candy|query|

        When SuperAdmin chooses a random Namespace from all namespaces
        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful

        When SuperAdmin updates the random object from namespaces:
			|status|description|
			|Candidate|query|

        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Candidate|query|

        When SuperAdmin deletes the random object from namespaces:
        Then the delete should be successful

        Scenario: Namespace Specific CRUD Operations: Trial 3
        When SuperAdmin creates a Namespace in namespaces:
			|status|description|name|
			|Disabled|wyvern|every|

        When SuperAdmin chooses a random Namespace from all namespaces
        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful

        When SuperAdmin updates the random object from namespaces:
			|status|description|
			|Disabled|xylophone|

        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Disabled|xylophone|

        When SuperAdmin deletes the random object from namespaces:
        Then the delete should be successful

        Scenario: Namespace Specific CRUD Operations: Trial 4
        When SuperAdmin creates a Namespace in namespaces:
			|status|description|name|
			|Disabled|every|kick|

        When SuperAdmin chooses a random Namespace from all namespaces
        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful

        When SuperAdmin updates the random object from namespaces:
			|status|description|
			|Disabled|under|

        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Disabled|under|

        When SuperAdmin deletes the random object from namespaces:
        Then the delete should be successful

        Scenario: Namespace Specific CRUD Operations: Trial 5
        When SuperAdmin creates a Namespace in namespaces:
			|status|description|name|
			|Active|xylophone|query|

        When SuperAdmin chooses a random Namespace from all namespaces
        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful

        When SuperAdmin updates the random object from namespaces:
			|status|description|
			|Disabled|candy|

        When SuperAdmin asks for the random object from namespaces
        Then the request should be successful
        And the body of the response should contain:
			|status|description|
			|Disabled|candy|

        When SuperAdmin deletes the random object from namespaces:
        Then the delete should be successful

        