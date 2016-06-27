Feature: Policy
    Policy that describes the set of rules to be applied when an event happens in the system. For example, policy can be defined to authorize an API call

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: Policy Resource Request
        When SuperAdmin requests policies

Scenario: Policy Specific CRUD Operations: Trial 1
        When SuperAdmin creates a Policy in policies:
			|status|type|description|name|
			|Candidate|File|past|yawp|

        When SuperAdmin chooses a random Policy from all policies
        When SuperAdmin asks for the random object from policies
        Then the request should be successful

        When SuperAdmin updates the random object from policies:
			|status|type|description|name|
			|Candidate|Syscall|kick|dandelion|

        When SuperAdmin asks for the random object from policies
        Then the request should be successful
        And the body of the response should contain:
			|status|type|description|name|
			|Candidate|Syscall|kick|dandelion|

        When SuperAdmin deletes the random object from policies:
        Then the delete should be successful

        Scenario: Policy Specific CRUD Operations: Trial 2
        When SuperAdmin creates a Policy in policies:
			|status|type|description|name|
			|Disabled|ExtendTags|rest|kick|

        When SuperAdmin chooses a random Policy from all policies
        When SuperAdmin asks for the random object from policies
        Then the request should be successful

        When SuperAdmin updates the random object from policies:
			|status|type|description|name|
			|Candidate|Statistics|vacuous|lemon|

        When SuperAdmin asks for the random object from policies
        Then the request should be successful
        And the body of the response should contain:
			|status|type|description|name|
			|Candidate|Statistics|vacuous|lemon|

        When SuperAdmin deletes the random object from policies:
        Then the delete should be successful

        Scenario: Policy Specific CRUD Operations: Trial 3
        When SuperAdmin creates a Policy in policies:
			|status|type|description|name|
			|Disabled|ExtendTags|zoology|xylophone|

        When SuperAdmin chooses a random Policy from all policies
        When SuperAdmin asks for the random object from policies
        Then the request should be successful

        When SuperAdmin updates the random object from policies:
			|status|type|description|name|
			|Active|NamespaceMapping|atom|dandelion|

        When SuperAdmin asks for the random object from policies
        Then the request should be successful
        And the body of the response should contain:
			|status|type|description|name|
			|Active|NamespaceMapping|atom|dandelion|

        When SuperAdmin deletes the random object from policies:
        Then the delete should be successful

        Scenario: Policy Specific CRUD Operations: Trial 4
        When SuperAdmin creates a Policy in policies:
			|status|type|description|name|
			|Disabled|File|zoology|candy|

        When SuperAdmin chooses a random Policy from all policies
        When SuperAdmin asks for the random object from policies
        Then the request should be successful

        When SuperAdmin updates the random object from policies:
			|status|type|description|name|
			|Candidate|ExtendTags|candy|kick|

        When SuperAdmin asks for the random object from policies
        Then the request should be successful
        And the body of the response should contain:
			|status|type|description|name|
			|Candidate|ExtendTags|candy|kick|

        When SuperAdmin deletes the random object from policies:
        Then the delete should be successful

        Scenario: Policy Specific CRUD Operations: Trial 5
        When SuperAdmin creates a Policy in policies:
			|status|type|description|name|
			|Active|Statistics|zoology|yawp|

        When SuperAdmin chooses a random Policy from all policies
        When SuperAdmin asks for the random object from policies
        Then the request should be successful

        When SuperAdmin updates the random object from policies:
			|status|type|description|name|
			|Candidate|APIAuthorization|rest|vacuous|

        When SuperAdmin asks for the random object from policies
        Then the request should be successful
        And the body of the response should contain:
			|status|type|description|name|
			|Candidate|APIAuthorization|rest|vacuous|

        When SuperAdmin deletes the random object from policies:
        Then the delete should be successful

        