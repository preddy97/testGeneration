Feature: Tag
    Tag to be attached to an entity

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: Tag Resource Request
        When SuperAdmin requests tags

Scenario: Tag Specific CRUD Operations: Trial 1
        When SuperAdmin creates a Tag in tags:
			|status|description|value|keyValuePair|key|name|
			|Disabled|birch|atom|hero=villain|flavor|slice|

        When SuperAdmin chooses a random Tag from all tags
        When SuperAdmin asks for the random object from tags
        Then the request should be successful

        When SuperAdmin updates the random object from tags:
			|status|keyValuePair|description|name|
			|Disabled|past=tense|flavor|mastery|

        When SuperAdmin asks for the random object from tags
        Then the request should be successful
        And the body of the response should contain:
			|status|keyValuePair|description|name|
			|Disabled|past=tense|flavor|mastery|

        When SuperAdmin deletes the random object from tags:
        Then the delete should be successful

        Scenario: Tag Specific CRUD Operations: Trial 2
        When SuperAdmin creates a Tag in tags:
			|status|description|value|keyValuePair|key|name|
			|Candidate|zoology|flavor|past=tense|xylophone|mastery|

        When SuperAdmin chooses a random Tag from all tags
        When SuperAdmin asks for the random object from tags
        Then the request should be successful

        When SuperAdmin updates the random object from tags:
			|status|keyValuePair|description|name|
			|Candidate|key=value|osprey|osprey|

        When SuperAdmin asks for the random object from tags
        Then the request should be successful
        And the body of the response should contain:
			|status|keyValuePair|description|name|
			|Candidate|key=value|osprey|osprey|

        When SuperAdmin deletes the random object from tags:
        Then the delete should be successful

        Scenario: Tag Specific CRUD Operations: Trial 3
        When SuperAdmin creates a Tag in tags:
			|status|description|value|keyValuePair|key|name|
			|Disabled|rest|past|temp=true|zoology|kick|

        When SuperAdmin chooses a random Tag from all tags
        When SuperAdmin asks for the random object from tags
        Then the request should be successful

        When SuperAdmin updates the random object from tags:
			|status|keyValuePair|description|name|
			|Disabled|temp=true|kick|wyvern|

        When SuperAdmin asks for the random object from tags
        Then the request should be successful
        And the body of the response should contain:
			|status|keyValuePair|description|name|
			|Disabled|temp=true|kick|wyvern|

        When SuperAdmin deletes the random object from tags:
        Then the delete should be successful

        Scenario: Tag Specific CRUD Operations: Trial 4
        When SuperAdmin creates a Tag in tags:
			|status|description|value|keyValuePair|key|name|
			|Candidate|flavor|past|past=tense|lemon|wyvern|

        When SuperAdmin chooses a random Tag from all tags
        When SuperAdmin asks for the random object from tags
        Then the request should be successful

        When SuperAdmin updates the random object from tags:
			|status|keyValuePair|description|name|
			|Candidate|past=tense|vacuous|kick|

        When SuperAdmin asks for the random object from tags
        Then the request should be successful
        And the body of the response should contain:
			|status|keyValuePair|description|name|
			|Candidate|past=tense|vacuous|kick|

        When SuperAdmin deletes the random object from tags:
        Then the delete should be successful

        Scenario: Tag Specific CRUD Operations: Trial 5
        When SuperAdmin creates a Tag in tags:
			|status|description|value|keyValuePair|key|name|
			|Active|triumph|illicit|key=value|query|triumph|

        When SuperAdmin chooses a random Tag from all tags
        When SuperAdmin asks for the random object from tags
        Then the request should be successful

        When SuperAdmin updates the random object from tags:
			|status|keyValuePair|description|name|
			|Active|key=value|flavor|every|

        When SuperAdmin asks for the random object from tags
        Then the request should be successful
        And the body of the response should contain:
			|status|keyValuePair|description|name|
			|Active|key=value|flavor|every|

        When SuperAdmin deletes the random object from tags:
        Then the delete should be successful

        