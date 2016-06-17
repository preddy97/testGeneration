Feature: FilePath 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create FilePath 
		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|xylophone|vacuous|lemon|birch|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|great|birch|atom|illicit|Active|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|mastery|rest|atom|jovial|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|wyvern|hire|triumph|hire|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|triumph|candy|under|atom|Active|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|hire|xylophone|kick|query|Active|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|dandelion|atom|flavor|past|Active|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|slice|jovial|flavor|birch|Active|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|xylophone|osprey|every|flavor|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|rest|slice|wyvern|xylophone|Active|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|lemon|dandelion|nibble|jovial|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|birch|candy|slice|nibble|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|lemon|great|triumph|every|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|atom|past|every|zoology|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|lemon|every|query|yawp|Active|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|yawp|zoology|rest|yawp|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|jovial|jovial|past|jovial|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|past|flavor|rest|flavor|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|great|mastery|osprey|triumph|Active|
		Then the creation should be successful

		When SuperAdmin creates a filepath in filepaths:
			|filepath|serverID|name|description|status|
			|flavor|every|triumph|hire|Candidate|
		Then the creation should be successful

	Scenario: Root Get FilePath 
		When SuperAdmin requests filepaths
		Then the request should be successful

	Scenario: FilePath Specific ID Operations
		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|birch|zoology|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|birch|zoology|Active|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|jovial|xylophone|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|jovial|xylophone|Candidate|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|wyvern|nibble|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|wyvern|nibble|Active|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|every|kick|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|every|kick|Disabled|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|birch|every|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|birch|every|Active|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|flavor|dandelion|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|flavor|dandelion|Disabled|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|dandelion|candy|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|dandelion|candy|Candidate|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|kick|xylophone|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|kick|xylophone|Active|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|atom|kick|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|atom|kick|Candidate|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|query|zoology|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|query|zoology|Active|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|candy|triumph|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|candy|triumph|Disabled|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|mastery|triumph|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|mastery|triumph|Disabled|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|candy|osprey|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|candy|osprey|Active|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|nibble|atom|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|nibble|atom|Candidate|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|yawp|yawp|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|yawp|yawp|Candidate|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|nibble|kick|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|nibble|kick|Candidate|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|rest|every|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|rest|every|Disabled|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|jovial|yawp|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|jovial|yawp|Disabled|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|xylophone|jovial|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|xylophone|jovial|Active|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

		When SuperAdmin chooses a random filepath from all filepaths
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful

		When SuperAdmin updates the random object from filepaths:
			|name|description|status|
			|slice|candy|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from filepaths 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|slice|candy|Candidate|

		When SuperAdmin deletes the random object from filepaths 
		Then the delete should be successful

