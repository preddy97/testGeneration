Feature: SystemCall
    SystemCall

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: SystemCall Resource Request
        When SuperAdmin requests systemcalls

Scenario: SystemCall Specific CRUD Operations: Trial 1
        When SuperAdmin creates a SystemCall in systemcalls:
			|status|description|name|
			|Active|flavor|xylophone|

        When SuperAdmin chooses a random SystemCall from all systemcalls
        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful

        When SuperAdmin updates the random object from systemcalls:
			|status|description|name|
			|Active|illicit|every|

        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Active|illicit|every|

        When SuperAdmin deletes the random object from systemcalls:
        Then the delete should be successful

        Scenario: SystemCall Specific CRUD Operations: Trial 2
        When SuperAdmin creates a SystemCall in systemcalls:
			|status|description|name|
			|Candidate|xylophone|xylophone|

        When SuperAdmin chooses a random SystemCall from all systemcalls
        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful

        When SuperAdmin updates the random object from systemcalls:
			|status|description|name|
			|Disabled|flavor|wyvern|

        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Disabled|flavor|wyvern|

        When SuperAdmin deletes the random object from systemcalls:
        Then the delete should be successful

        Scenario: SystemCall Specific CRUD Operations: Trial 3
        When SuperAdmin creates a SystemCall in systemcalls:
			|status|description|name|
			|Active|kick|nibble|

        When SuperAdmin chooses a random SystemCall from all systemcalls
        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful

        When SuperAdmin updates the random object from systemcalls:
			|status|description|name|
			|Disabled|xylophone|great|

        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Disabled|xylophone|great|

        When SuperAdmin deletes the random object from systemcalls:
        Then the delete should be successful

        Scenario: SystemCall Specific CRUD Operations: Trial 4
        When SuperAdmin creates a SystemCall in systemcalls:
			|status|description|name|
			|Disabled|wyvern|dandelion|

        When SuperAdmin chooses a random SystemCall from all systemcalls
        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful

        When SuperAdmin updates the random object from systemcalls:
			|status|description|name|
			|Candidate|illicit|query|

        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Candidate|illicit|query|

        When SuperAdmin deletes the random object from systemcalls:
        Then the delete should be successful

        Scenario: SystemCall Specific CRUD Operations: Trial 5
        When SuperAdmin creates a SystemCall in systemcalls:
			|status|description|name|
			|Active|candy|flavor|

        When SuperAdmin chooses a random SystemCall from all systemcalls
        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful

        When SuperAdmin updates the random object from systemcalls:
			|status|description|name|
			|Active|illicit|slice|

        When SuperAdmin asks for the random object from systemcalls
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Active|illicit|slice|

        When SuperAdmin deletes the random object from systemcalls:
        Then the delete should be successful

        