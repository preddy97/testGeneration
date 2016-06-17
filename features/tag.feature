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

	Scenario: Root Get Tag 
		When SuperAdmin requests tags
		Then the request should be successful

	Scenario: Tag Specific ID Operations
		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|temp=true|atom|flavor|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|temp=true|atom|flavor|Candidate|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|hero=villain|slice|jovial|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|hero=villain|slice|jovial|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|key=value|candy|xylophone|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|key=value|candy|xylophone|Disabled|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|hero=villain|flavor|flavor|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|hero=villain|flavor|flavor|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful

		When SuperAdmin updates the random object from tags:
			|keyValuePair|name|description|status|
			|live=die|wyvern|xylophone|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags 
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|name|description|status|
			|live=die|wyvern|xylophone|Active|

		When SuperAdmin deletes the random object from tags 
		Then the delete should be successful

