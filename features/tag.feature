Feature: Tag 
	Background:
		Given I'm going to use the API: localhost:8080
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create Tag 
		When SuperAdmin creates a new tag in tags
			|keyValuePair|value|key|name|description|
			|temp=true|vacuous|lemon|birch|zoology|
		Then the creation is successful

		When SuperAdmin creates a new tag in tags
			|keyValuePair|value|key|name|description|
			|live=die|birch|atom|illicit|candy|
		Then the creation is successful

		When SuperAdmin creates a new tag in tags
			|keyValuePair|value|key|name|description|
			|hero=villain|rest|atom|jovial|wyvern|
		Then the creation is successful

		When SuperAdmin creates a new tag in tags
			|keyValuePair|value|key|name|description|
			|hero=villain|hire|triumph|hire|candy|
		Then the creation is successful

		When SuperAdmin creates a new tag in tags
			|keyValuePair|value|key|name|description|
			|key=value|candy|under|atom|xylophone|
		Then the creation is successful

	Scenario: Root Get Tag 
		When SuperAdmin requests tag
		Then the request is successful

	Scenario: Tag Specific ID Operations
		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin requests the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|
			|past=tense|xylophone|kick|query|flavor|
		Then the update is successful
		When SuperAdmin requests the random object from tags 
		Then the request should be successful
		And the response should contain:
			|keyValuePair|value|key|name|description|
			|past=tense|xylophone|kick|query|flavor|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin requests the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|
			|temp=true|atom|flavor|past|lemon|
		Then the update is successful
		When SuperAdmin requests the random object from tags 
		Then the request should be successful
		And the response should contain:
			|keyValuePair|value|key|name|description|
			|temp=true|atom|flavor|past|lemon|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin requests the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|
			|temp=true|jovial|flavor|birch|candy|
		Then the update is successful
		When SuperAdmin requests the random object from tags 
		Then the request should be successful
		And the response should contain:
			|keyValuePair|value|key|name|description|
			|temp=true|jovial|flavor|birch|candy|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin requests the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|
			|live=die|osprey|every|flavor|flavor|
		Then the update is successful
		When SuperAdmin requests the random object from tags 
		Then the request should be successful
		And the response should contain:
			|keyValuePair|value|key|name|description|
			|live=die|osprey|every|flavor|flavor|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin requests the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|
			|past=tense|slice|wyvern|xylophone|past|
		Then the update is successful
		When SuperAdmin requests the random object from tags 
		Then the request should be successful
		And the response should contain:
			|keyValuePair|value|key|name|description|
			|past=tense|slice|wyvern|xylophone|past|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

