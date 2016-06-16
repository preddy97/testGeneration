Feature: Tag
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create Tag
		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|temp=true|vacuous|lemon|birch|zoology|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|key=value|atom|illicit|candy|mastery|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|jovial|wyvern|wyvern|hire|Active|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|candy|triumph|candy|under|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a tag in tags:
			|keyValuePair|value|key|name|description|status|
			|past=tense|hire|xylophone|kick|query|Candidate|
		Then the creation should be successful

	Scenario: Root Get Tag
		When SuperAdmin requests tags
		Then the request should be successful

	Scenario: Tag Specific ID Operations
		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|status|
			|temp=true|atom|flavor|past|lemon|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|value|key|name|description|status|
			|temp=true|atom|flavor|past|lemon|Active|

		When SuperAdmin deletes the random object from tags
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|status|
			|past=tense|flavor|birch|candy|xylophone|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|value|key|name|description|status|
			|past=tense|flavor|birch|candy|xylophone|Disabled|

		When SuperAdmin deletes the random object from tags
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|status|
			|hero=villain|flavor|flavor|rest|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|value|key|name|description|status|
			|hero=villain|flavor|flavor|rest|slice|Active|

		When SuperAdmin deletes the random object from tags
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|status|
			|hero=villain|past|lemon|dandelion|nibble|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|value|key|name|description|status|
			|hero=villain|past|lemon|dandelion|nibble|Candidate|

		When SuperAdmin deletes the random object from tags
		Then the delete should be successful

		When SuperAdmin chooses a random tag from all tags
		When SuperAdmin asks for the random object from tags
		Then the request should be successful

		When SuperAdmin updates the random object from tags :
			|keyValuePair|value|key|name|description|status|
			|key=value|birch|candy|slice|nibble|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from tags
		Then the request should be successful
		And the body of the response should contain:
			|keyValuePair|value|key|name|description|status|
			|key=value|birch|candy|slice|nibble|Candidate|

		When SuperAdmin deletes the random object from tags
		Then the delete should be successful

