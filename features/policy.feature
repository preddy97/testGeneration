Feature: Policy 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create Policy 
		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|NamespaceMapping|vacuous|lemon|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|NamespaceMapping|great|birch|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|Statistics|candy|mastery|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|Statistics|jovial|wyvern|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|APIAuthorization|triumph|hire|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|Syscall|candy|under|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|Network|hire|xylophone|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|Statistics|flavor|dandelion|Active|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|NamespaceMapping|past|lemon|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|APIAuthorization|flavor|birch|Active|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|NamespaceMapping|osprey|every|Active|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|NamespaceMapping|rest|slice|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|NamespaceMapping|past|lemon|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|ExtendTags|jovial|osprey|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|File|slice|nibble|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|ExtendTags|great|triumph|Active|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|ExtendTags|atom|past|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|ExtendTags|query|lemon|Active|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|Network|yawp|hire|Active|
		Then the creation should be successful

		When SuperAdmin creates a policy in policies:
			|type|name|description|status|
			|APIAuthorization|rest|yawp|Candidate|
		Then the creation should be successful

	Scenario: Root Get Policy 
		When SuperAdmin requests policies
		Then the request should be successful

	Scenario: Policy Specific ID Operations
		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|APIAuthorization|jovial|past|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|APIAuthorization|jovial|past|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|ExtendTags|past|flavor|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|ExtendTags|past|flavor|Candidate|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|Network|every|great|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|Network|every|great|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|NamespaceMapping|triumph|atom|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|NamespaceMapping|triumph|atom|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|NamespaceMapping|triumph|hire|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|NamespaceMapping|triumph|hire|Candidate|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|NamespaceMapping|zoology|rest|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|NamespaceMapping|zoology|rest|Candidate|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|ExtendTags|atom|wyvern|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|ExtendTags|atom|wyvern|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|APIAuthorization|every|kick|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|APIAuthorization|every|kick|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|NamespaceMapping|every|mastery|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|NamespaceMapping|every|mastery|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|NamespaceMapping|zoology|dandelion|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|NamespaceMapping|zoology|dandelion|Active|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|File|kick|xylophone|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|File|kick|xylophone|Active|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|ExtendTags|kick|jovial|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|ExtendTags|kick|jovial|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|APIAuthorization|lemon|candy|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|APIAuthorization|lemon|candy|Active|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|NamespaceMapping|mastery|triumph|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|NamespaceMapping|mastery|triumph|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|Network|osprey|atom|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|Network|osprey|atom|Active|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|Syscall|triumph|yawp|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|Syscall|triumph|yawp|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|APIAuthorization|nibble|kick|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|APIAuthorization|nibble|kick|Candidate|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|Statistics|every|kick|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|Statistics|every|kick|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|ExtendTags|illicit|xylophone|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|ExtendTags|illicit|xylophone|Disabled|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

		When SuperAdmin chooses a random policy from all policies
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful

		When SuperAdmin updates the random object from policies:
			|type|name|description|status|
			|Syscall|slice|candy|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from policies 
		Then the request should be successful
		And the body of the response should contain:
			|type|name|description|status|
			|Syscall|slice|candy|Candidate|

		When SuperAdmin deletes the random object from policies 
		Then the delete should be successful

