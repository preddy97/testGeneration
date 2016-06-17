Feature: Namespace 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create Namespace 
		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|xylophone|vacuous|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|birch|zoology|Active|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|birch|atom|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|candy|mastery|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|atom|jovial|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|wyvern|hire|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|hire|candy|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|candy|under|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|xylophone|hire|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|kick|query|Active|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|dandelion|atom|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|past|lemon|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|jovial|flavor|Active|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|candy|xylophone|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|every|flavor|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|rest|slice|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|xylophone|past|Active|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|dandelion|nibble|Active|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|osprey|birch|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a namespace in namespaces:
			|name|description|status|
			|slice|nibble|Candidate|
		Then the creation should be successful

	Scenario: Root Get Namespace 
		When SuperAdmin requests namespaces
		Then the request should be successful

	Scenario: Namespace Specific ID Operations
		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|lemon|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|lemon|Active|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|triumph|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|triumph|Active|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|mastery|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|mastery|Candidate|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|past|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|past|Candidate|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|zoology|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|zoology|Candidate|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|lemon|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|lemon|Active|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|query|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|query|Candidate|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|hire|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|hire|Active|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|zoology|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|zoology|Disabled|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|yawp|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|yawp|Candidate|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|jovial|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|jovial|Active|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|past|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|past|Disabled|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|zoology|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|zoology|Disabled|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|flavor|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|flavor|Candidate|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|flavor|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|flavor|Disabled|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|great|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|great|Disabled|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|osprey|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|osprey|Disabled|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|atom|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|atom|Disabled|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|every|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|every|Active|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

		When SuperAdmin chooses a random namespace from all namespaces
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful

		When SuperAdmin updates the random object from namespaces:
			|description|status|
			|hire|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from namespaces 
		Then the request should be successful
		And the body of the response should contain:
			|description|status|
			|hire|Candidate|

		When SuperAdmin deletes the random object from namespaces 
		Then the delete should be successful

