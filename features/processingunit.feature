Feature: ProcessingUnit
    ProcessingUnits is the container that gets instantiated on the server

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: ProcessingUnit Resource Request
        When SuperAdmin requests processingunits

Scenario: ProcessingUnit Specific CRUD Operations: Trial 1
        When SuperAdmin creates a ProcessingUnit in processingunits:
			|status|description|nativeContextID|operationalStatus|serverID|type|policyState|name|
			|Candidate|great|zoology|Active|rest|LinuxService|Dirty|yawp|

        When SuperAdmin chooses a random ProcessingUnit from all processingunits
        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful

        When SuperAdmin updates the random object from processingunits:
			|status|description|operationalStatus|type|policyState|name|
			|Candidate|atom|Dead|Docker|Dirty|wyvern|

        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful
        And the body of the response should contain:
			|status|description|operationalStatus|type|policyState|name|
			|Candidate|atom|Dead|Docker|Dirty|wyvern|

        When SuperAdmin deletes the random object from processingunits:
        Then the delete should be successful

        Scenario: ProcessingUnit Specific CRUD Operations: Trial 2
        When SuperAdmin creates a ProcessingUnit in processingunits:
			|status|description|nativeContextID|operationalStatus|serverID|type|policyState|name|
			|Disabled|osprey|past|Dead|hire|LinuxService|Dirty|zoology|

        When SuperAdmin chooses a random ProcessingUnit from all processingunits
        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful

        When SuperAdmin updates the random object from processingunits:
			|status|description|operationalStatus|type|policyState|name|
			|Active|lemon|Active|RKT|Synchronized|flavor|

        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful
        And the body of the response should contain:
			|status|description|operationalStatus|type|policyState|name|
			|Active|lemon|Active|RKT|Synchronized|flavor|

        When SuperAdmin deletes the random object from processingunits:
        Then the delete should be successful

        Scenario: ProcessingUnit Specific CRUD Operations: Trial 3
        When SuperAdmin creates a ProcessingUnit in processingunits:
			|status|description|nativeContextID|operationalStatus|serverID|type|policyState|name|
			|Disabled|flavor|mastery|Active|lemon|LinuxService|Dirty|candy|

        When SuperAdmin chooses a random ProcessingUnit from all processingunits
        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful

        When SuperAdmin updates the random object from processingunits:
			|status|description|operationalStatus|type|policyState|name|
			|Candidate|kick|Active|Docker|Synchronized|mastery|

        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful
        And the body of the response should contain:
			|status|description|operationalStatus|type|policyState|name|
			|Candidate|kick|Active|Docker|Synchronized|mastery|

        When SuperAdmin deletes the random object from processingunits:
        Then the delete should be successful

        Scenario: ProcessingUnit Specific CRUD Operations: Trial 4
        When SuperAdmin creates a ProcessingUnit in processingunits:
			|status|description|nativeContextID|operationalStatus|serverID|type|policyState|name|
			|Active|rest|xylophone|Dead|osprey|Docker|Dirty|hire|

        When SuperAdmin chooses a random ProcessingUnit from all processingunits
        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful

        When SuperAdmin updates the random object from processingunits:
			|status|description|operationalStatus|type|policyState|name|
			|Candidate|hire|Dead|Docker|Synchronized|hire|

        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful
        And the body of the response should contain:
			|status|description|operationalStatus|type|policyState|name|
			|Candidate|hire|Dead|Docker|Synchronized|hire|

        When SuperAdmin deletes the random object from processingunits:
        Then the delete should be successful

        Scenario: ProcessingUnit Specific CRUD Operations: Trial 5
        When SuperAdmin creates a ProcessingUnit in processingunits:
			|status|description|nativeContextID|operationalStatus|serverID|type|policyState|name|
			|Disabled|past|every|Dead|dandelion|LinuxService|Synchronized|illicit|

        When SuperAdmin chooses a random ProcessingUnit from all processingunits
        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful

        When SuperAdmin updates the random object from processingunits:
			|status|description|operationalStatus|type|policyState|name|
			|Candidate|wyvern|Dead|Docker|Synchronized|query|

        When SuperAdmin asks for the random object from processingunits
        Then the request should be successful
        And the body of the response should contain:
			|status|description|operationalStatus|type|policyState|name|
			|Candidate|wyvern|Dead|Docker|Synchronized|query|

        When SuperAdmin deletes the random object from processingunits:
        Then the delete should be successful

        