Feature: ExternalService 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create ExternalService 
		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|xylophone|vacuous|lemon|birch|zoology|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|birch|atom|illicit|candy|mastery|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|atom|jovial|wyvern|wyvern|hire|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|hire|candy|triumph|candy|under|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|xylophone|hire|xylophone|kick|query|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|dandelion|atom|flavor|past|lemon|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|jovial|flavor|birch|candy|xylophone|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|every|flavor|flavor|rest|slice|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|xylophone|past|lemon|dandelion|nibble|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|osprey|birch|candy|slice|nibble|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|lemon|great|triumph|every|mastery|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|past|every|zoology|query|lemon|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|query|yawp|hire|yawp|zoology|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|yawp|wyvern|jovial|jovial|past|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|zoology|past|flavor|rest|flavor|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|great|mastery|osprey|triumph|atom|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|every|triumph|hire|slice|birch|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|rest|jovial|xylophone|atom|wyvern|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|wyvern|every|kick|rest|birch|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|network|protocol|port|name|description|status|
			|mastery|flavor|dandelion|zoology|dandelion|Active|
		Then the creation should be successful

	Scenario: Root Get ExternalService 
		When SuperAdmin requests externalservices
		Then the request should be successful

	Scenario: ExternalService Specific ID Operations
		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|every|kick|xylophone|birch|atom|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|every|kick|xylophone|birch|atom|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|jovial|query|zoology|lemon|candy|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|jovial|query|zoology|lemon|candy|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|triumph|mastery|triumph|triumph|candy|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|triumph|mastery|triumph|triumph|candy|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|atom|nibble|atom|triumph|yawp|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|atom|nibble|atom|triumph|yawp|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|illicit|nibble|kick|atom|rest|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|illicit|nibble|kick|atom|rest|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|kick|jovial|yawp|illicit|xylophone|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|kick|jovial|yawp|illicit|xylophone|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|rest|slice|candy|candy|triumph|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|rest|slice|candy|candy|triumph|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|slice|wyvern|yawp|nibble|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|slice|wyvern|yawp|nibble|slice|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|rest|under|slice|slice|vacuous|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|rest|under|slice|slice|vacuous|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|atom|osprey|zoology|flavor|zoology|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|atom|osprey|zoology|flavor|zoology|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|slice|birch|osprey|jovial|illicit|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|slice|birch|osprey|jovial|illicit|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|query|great|zoology|slice|nibble|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|query|great|zoology|slice|nibble|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|triumph|kick|slice|mastery|vacuous|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|triumph|kick|slice|mastery|vacuous|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|illicit|great|lemon|osprey|past|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|illicit|great|lemon|osprey|past|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|under|osprey|past|every|dandelion|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|under|osprey|past|every|dandelion|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|under|past|dandelion|osprey|mastery|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|under|past|dandelion|osprey|mastery|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|rest|vacuous|jovial|atom|rest|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|rest|vacuous|jovial|atom|rest|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|lemon|nibble|triumph|xylophone|yawp|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|lemon|nibble|triumph|xylophone|yawp|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|under|candy|wyvern|kick|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|under|candy|wyvern|kick|slice|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|network|protocol|port|name|description|status|
			|birch|great|yawp|rest|atom|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|network|protocol|port|name|description|status|
			|birch|great|yawp|rest|atom|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

