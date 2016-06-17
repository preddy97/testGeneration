Feature: ExternalService 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create ExternalService 
		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|xylophone|vacuous|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|birch|zoology|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|birch|atom|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|candy|mastery|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|atom|jovial|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|wyvern|hire|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|hire|candy|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|candy|under|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|xylophone|hire|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|kick|query|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|dandelion|atom|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|past|lemon|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|jovial|flavor|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|candy|xylophone|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|every|flavor|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|rest|slice|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|xylophone|past|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|dandelion|nibble|Active|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|osprey|birch|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a externalservice in externalservices:
			|name|description|status|
			|slice|nibble|Candidate|
		Then the creation should be successful

	Scenario: Root Get ExternalService 
		When SuperAdmin requests externalservices
		Then the request should be successful

	Scenario: ExternalService Specific ID Operations
		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|lemon|great|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|lemon|great|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|every|mastery|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|every|mastery|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|past|every|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|past|every|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|query|lemon|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|query|lemon|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|query|yawp|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|query|yawp|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|yawp|zoology|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|yawp|zoology|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|yawp|wyvern|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|yawp|wyvern|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|jovial|past|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|jovial|past|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|zoology|past|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|zoology|past|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|rest|flavor|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|rest|flavor|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|great|mastery|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|great|mastery|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|triumph|atom|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|triumph|atom|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|every|triumph|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|every|triumph|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|slice|birch|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|slice|birch|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|rest|jovial|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|rest|jovial|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|atom|wyvern|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|atom|wyvern|Disabled|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|wyvern|every|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|wyvern|every|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|rest|birch|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|rest|birch|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|mastery|flavor|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|mastery|flavor|Candidate|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

		When SuperAdmin chooses a random externalservice from all externalservices
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful

		When SuperAdmin updates the random object from externalservices:
			|name|description|status|
			|zoology|dandelion|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from externalservices 
		Then the request should be successful
		And the body of the response should contain:
			|name|description|status|
			|zoology|dandelion|Active|

		When SuperAdmin deletes the random object from externalservices 
		Then the delete should be successful

