Feature: Server
    Server runs all the containers

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: Server Resource Request
        When SuperAdmin requests servers

Scenario: Server Specific CRUD Operations: Trial 1
        When SuperAdmin creates a Server in servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|lemon|hire|GCP|CONNECTED|wyvern|

        When SuperAdmin chooses a random Server from all servers
        When SuperAdmin asks for the random object from servers
        Then the request should be successful

        When SuperAdmin updates the random object from servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Active|slice|atom|GCP|INITIALIZED|zoology|

        When SuperAdmin asks for the random object from servers
        Then the request should be successful
        And the body of the response should contain:
			|status|description|certificate|environment|operationalStatus|name|
			|Active|slice|atom|GCP|INITIALIZED|zoology|

        When SuperAdmin deletes the random object from servers:
        Then the delete should be successful

        Scenario: Server Specific CRUD Operations: Trial 2
        When SuperAdmin creates a Server in servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|flavor|illicit|GCP|INITIALIZED|past|

        When SuperAdmin chooses a random Server from all servers
        When SuperAdmin asks for the random object from servers
        Then the request should be successful

        When SuperAdmin updates the random object from servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|past|hire|AWS|INITIALIZED|dandelion|

        When SuperAdmin asks for the random object from servers
        Then the request should be successful
        And the body of the response should contain:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|past|hire|AWS|INITIALIZED|dandelion|

        When SuperAdmin deletes the random object from servers:
        Then the delete should be successful

        Scenario: Server Specific CRUD Operations: Trial 3
        When SuperAdmin creates a Server in servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|lemon|slice|GCP|UNKNOWN|xylophone|

        When SuperAdmin chooses a random Server from all servers
        When SuperAdmin asks for the random object from servers
        Then the request should be successful

        When SuperAdmin updates the random object from servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|slice|flavor|GCP|INITIALIZED|xylophone|

        When SuperAdmin asks for the random object from servers
        Then the request should be successful
        And the body of the response should contain:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|slice|flavor|GCP|INITIALIZED|xylophone|

        When SuperAdmin deletes the random object from servers:
        Then the delete should be successful

        Scenario: Server Specific CRUD Operations: Trial 4
        When SuperAdmin creates a Server in servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Active|triumph|mastery|GCP|INITIALIZED|osprey|

        When SuperAdmin chooses a random Server from all servers
        When SuperAdmin asks for the random object from servers
        Then the request should be successful

        When SuperAdmin updates the random object from servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Candidate|triumph|yawp|AWS|INITIALIZED|zoology|

        When SuperAdmin asks for the random object from servers
        Then the request should be successful
        And the body of the response should contain:
			|status|description|certificate|environment|operationalStatus|name|
			|Candidate|triumph|yawp|AWS|INITIALIZED|zoology|

        When SuperAdmin deletes the random object from servers:
        Then the delete should be successful

        Scenario: Server Specific CRUD Operations: Trial 5
        When SuperAdmin creates a Server in servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|birch|wyvern|GCP|INITIALIZED|past|

        When SuperAdmin chooses a random Server from all servers
        When SuperAdmin asks for the random object from servers
        Then the request should be successful

        When SuperAdmin updates the random object from servers:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|triumph|lemon|GCP|CONNECTED|rest|

        When SuperAdmin asks for the random object from servers
        Then the request should be successful
        And the body of the response should contain:
			|status|description|certificate|environment|operationalStatus|name|
			|Disabled|triumph|lemon|GCP|CONNECTED|rest|

        When SuperAdmin deletes the random object from servers:
        Then the delete should be successful

        