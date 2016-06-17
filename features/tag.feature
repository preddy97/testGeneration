Feature: Tag 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create Tag 
		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|temp=true|vacuous|lemon|birch|zoology|Active|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|key=value|atom|illicit|candy|mastery|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|jovial|wyvern|wyvern|hire|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|candy|triumph|candy|under|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|hire|xylophone|kick|query|Active|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|temp=true|atom|flavor|past|lemon|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|flavor|birch|candy|xylophone|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|hero=villain|flavor|flavor|rest|slice|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|hero=villain|past|lemon|dandelion|nibble|Active|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|key=value|birch|candy|slice|nibble|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|temp=true|great|triumph|every|mastery|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|temp=true|every|zoology|query|lemon|Active|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|yawp|hire|yawp|zoology|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|temp=true|wyvern|jovial|jovial|past|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|temp=true|past|flavor|rest|flavor|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|live=die|mastery|osprey|triumph|atom|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|triumph|hire|slice|birch|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|key=value|jovial|xylophone|atom|wyvern|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|key=value|every|kick|rest|birch|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|hero=villain|flavor|dandelion|zoology|dandelion|Active|
		Then the creation should be successful

	Scenario: Root Get Tag 
		When SuperAdmin requests tags
		Then the request should be successful

	Scenario: Tag Specific ID Operations
		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|temp=true|kick|xylophone|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|temp=true|kick|xylophone|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|temp=true|kick|jovial|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|temp=true|kick|jovial|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|hero=villain|lemon|candy|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|hero=villain|lemon|candy|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|key=value|mastery|triumph|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|key=value|mastery|triumph|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|live=die|osprey|atom|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|live=die|osprey|atom|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|hero=villain|triumph|yawp|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|hero=villain|triumph|yawp|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|temp=true|nibble|kick|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|temp=true|nibble|kick|Candidate|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|temp=true|every|kick|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|temp=true|every|kick|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|hero=villain|illicit|xylophone|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|hero=villain|illicit|xylophone|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|temp=true|slice|candy|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|temp=true|slice|candy|Candidate|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|past=tense|nibble|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|past=tense|nibble|slice|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|past=tense|nibble|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|past=tense|nibble|slice|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|live=die|under|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|live=die|under|slice|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|key=value|mastery|atom|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|key=value|mastery|atom|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|past=tense|flavor|zoology|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|past=tense|flavor|zoology|Candidate|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|key=value|birch|osprey|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|key=value|birch|osprey|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|key=value|flavor|query|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|key=value|flavor|query|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|past=tense|slice|nibble|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|past=tense|slice|nibble|Candidate|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|hero=villain|kick|slice|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|hero=villain|kick|slice|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|key=value|osprey|illicit|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|key=value|osprey|illicit|Candidate|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

