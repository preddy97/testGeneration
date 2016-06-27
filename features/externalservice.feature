Feature: ExternalService
    ExternalService

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: ExternalService Resource Request
        When SuperAdmin requests externalservices

Scenario: ExternalService Specific CRUD Operations: Trial 1
        When SuperAdmin creates a ExternalService in externalservices:
			|status|protocol|network|name|port|description|
			|Candidate|triumph|candy|hire|atom|every|

        When SuperAdmin chooses a random ExternalService from all externalservices
        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful

        When SuperAdmin updates the random object from externalservices:
			|status|protocol|network|name|port|description|
			|Active|xylophone|hire|kick|triumph|vacuous|

        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful
        And the body of the response should contain:
			|status|protocol|network|name|port|description|
			|Active|xylophone|hire|kick|triumph|vacuous|

        When SuperAdmin deletes the random object from externalservices:
        Then the delete should be successful

        Scenario: ExternalService Specific CRUD Operations: Trial 2
        When SuperAdmin creates a ExternalService in externalservices:
			|status|protocol|network|name|port|description|
			|Active|atom|xylophone|birch|flavor|past|

        When SuperAdmin chooses a random ExternalService from all externalservices
        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful

        When SuperAdmin updates the random object from externalservices:
			|status|protocol|network|name|port|description|
			|Active|zoology|rest|osprey|osprey|atom|

        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful
        And the body of the response should contain:
			|status|protocol|network|name|port|description|
			|Active|zoology|rest|osprey|osprey|atom|

        When SuperAdmin deletes the random object from externalservices:
        Then the delete should be successful

        Scenario: ExternalService Specific CRUD Operations: Trial 3
        When SuperAdmin creates a ExternalService in externalservices:
			|status|protocol|network|name|port|description|
			|Active|hire|candy|every|flavor|nibble|

        When SuperAdmin chooses a random ExternalService from all externalservices
        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful

        When SuperAdmin updates the random object from externalservices:
			|status|protocol|network|name|port|description|
			|Active|jovial|hire|nibble|great|flavor|

        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful
        And the body of the response should contain:
			|status|protocol|network|name|port|description|
			|Active|jovial|hire|nibble|great|flavor|

        When SuperAdmin deletes the random object from externalservices:
        Then the delete should be successful

        Scenario: ExternalService Specific CRUD Operations: Trial 4
        When SuperAdmin creates a ExternalService in externalservices:
			|status|protocol|network|name|port|description|
			|Disabled|wyvern|yawp|xylophone|illicit|every|

        When SuperAdmin chooses a random ExternalService from all externalservices
        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful

        When SuperAdmin updates the random object from externalservices:
			|status|protocol|network|name|port|description|
			|Candidate|birch|query|great|xylophone|vacuous|

        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful
        And the body of the response should contain:
			|status|protocol|network|name|port|description|
			|Candidate|birch|query|great|xylophone|vacuous|

        When SuperAdmin deletes the random object from externalservices:
        Then the delete should be successful

        Scenario: ExternalService Specific CRUD Operations: Trial 5
        When SuperAdmin creates a ExternalService in externalservices:
			|status|protocol|network|name|port|description|
			|Active|past|kick|hire|yawp|xylophone|

        When SuperAdmin chooses a random ExternalService from all externalservices
        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful

        When SuperAdmin updates the random object from externalservices:
			|status|protocol|network|name|port|description|
			|Candidate|every|dandelion|slice|jovial|hire|

        When SuperAdmin asks for the random object from externalservices
        Then the request should be successful
        And the body of the response should contain:
			|status|protocol|network|name|port|description|
			|Candidate|every|dandelion|slice|jovial|hire|

        When SuperAdmin deletes the random object from externalservices:
        Then the delete should be successful

        