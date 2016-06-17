Feature: ProcessingUnit 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create ProcessingUnit 
		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|xylophone|Docker|lemon|Dead|Synchronized|great|birch|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|illicit|Docker|mastery|Dead|Dirty|jovial|wyvern|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|hire|LinuxService|hire|Active|Synchronized|candy|under|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|xylophone|RKT|xylophone|Active|Dirty|flavor|dandelion|Active|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|flavor|LinuxService|lemon|Active|Synchronized|flavor|birch|Active|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|xylophone|RKT|every|Dead|Synchronized|rest|slice|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|xylophone|Docker|lemon|Dead|Synchronized|jovial|osprey|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|candy|Docker|nibble|Dead|Synchronized|great|triumph|Active|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|mastery|LinuxService|past|Active|Synchronized|query|lemon|Active|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|query|LinuxService|hire|Active|Synchronized|rest|yawp|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|jovial|Docker|past|Dead|Synchronized|past|flavor|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|flavor|RKT|great|Active|Dirty|triumph|atom|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|every|Docker|hire|Active|Synchronized|zoology|rest|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|xylophone|LinuxService|wyvern|Dead|Dirty|every|kick|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|birch|LinuxService|mastery|Dead|Synchronized|zoology|dandelion|Active|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|every|RKT|xylophone|Dead|Dirty|kick|jovial|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|zoology|Docker|candy|Dead|Synchronized|mastery|triumph|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|candy|LinuxService|atom|Dead|Dirty|triumph|yawp|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|illicit|LinuxService|kick|Active|Synchronized|every|kick|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a processingunit in processingunits:
			|nativeContextID|type|serverID|operationalStatus|policyState|name|description|status|
			|yawp|RKT|xylophone|Dead|Synchronized|slice|candy|Candidate|
		Then the creation should be successful

	Scenario: Root Get ProcessingUnit 
		When SuperAdmin requests processingunits
		Then the request should be successful

	Scenario: ProcessingUnit Specific ID Operations
		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Dead|Dirty|wyvern|yawp|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Dead|Dirty|wyvern|yawp|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Active|Synchronized|under|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Active|Synchronized|under|slice|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Active|Dirty|osprey|zoology|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Active|Dirty|osprey|zoology|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Dead|Dirty|birch|osprey|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Dead|Dirty|birch|osprey|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Dead|Dirty|great|zoology|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Dead|Dirty|great|zoology|Disabled|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Active|Synchronized|kick|slice|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Active|Synchronized|kick|slice|Disabled|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Active|Dirty|great|lemon|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Active|Dirty|great|lemon|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Dead|Dirty|osprey|past|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Dead|Dirty|osprey|past|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Active|Dirty|past|dandelion|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Active|Dirty|past|dandelion|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Active|Synchronized|vacuous|jovial|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Active|Synchronized|vacuous|jovial|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Dead|Synchronized|nibble|triumph|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Dead|Synchronized|nibble|triumph|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Active|Dirty|candy|wyvern|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Active|Dirty|candy|wyvern|Candidate|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Dead|Synchronized|great|yawp|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Dead|Synchronized|great|yawp|Candidate|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Active|Dirty|birch|triumph|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Active|Dirty|birch|triumph|Candidate|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Active|Synchronized|flavor|jovial|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Active|Synchronized|flavor|jovial|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Dead|Synchronized|triumph|zoology|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|RKT|Dead|Synchronized|triumph|zoology|Candidate|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Active|Dirty|every|under|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Active|Dirty|every|under|Disabled|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Dead|Synchronized|query|mastery|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Dead|Synchronized|query|mastery|Disabled|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Active|Dirty|candy|osprey|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|LinuxService|Active|Dirty|candy|osprey|Active|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

		When SuperAdmin chooses a random processingunit from all processingunits
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful

		When SuperAdmin updates the random object from processingunits:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Dead|Dirty|vacuous|great|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from processingunits 
		Then the request should be successful
		And the body of the response should contain:
			|type|operationalStatus|policyState|name|description|status|
			|Docker|Dead|Dirty|vacuous|great|Candidate|

		When SuperAdmin deletes the random object from processingunits 
		Then the delete should be successful

