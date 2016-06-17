Feature: Server 
	Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

	Scenario: Root Create Server 
		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|xylophone|GCP|UNKNOWN|birch|zoology|Active|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|birch|AWS|CONNECTED|candy|mastery|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|atom|GCP|CONNECTED|wyvern|hire|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|hire|AWS|UNKNOWN|candy|under|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|xylophone|GCP|CONNECTED|kick|query|Active|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|dandelion|AWS|UNKNOWN|past|lemon|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|jovial|GCP|INITIALIZED|candy|xylophone|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|every|GCP|CONNECTED|rest|slice|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|xylophone|GCP|INITIALIZED|dandelion|nibble|Active|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|osprey|GCP|UNKNOWN|slice|nibble|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|lemon|AWS|INITIALIZED|every|mastery|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|past|AWS|UNKNOWN|query|lemon|Active|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|query|AWS|INITIALIZED|yawp|zoology|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|yawp|AWS|INITIALIZED|jovial|past|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|zoology|GCP|UNKNOWN|rest|flavor|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|great|AWS|INITIALIZED|triumph|atom|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|every|GCP|CONNECTED|slice|birch|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|rest|GCP|UNKNOWN|atom|wyvern|Disabled|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|wyvern|AWS|INITIALIZED|rest|birch|Candidate|
		Then the creation should be successful

		When SuperAdmin creates a server in servers:
			|certificate|environment|operationalStatus|name|description|status|
			|mastery|GCP|UNKNOWN|zoology|dandelion|Active|
		Then the creation should be successful

	Scenario: Root Get Server 
		When SuperAdmin requests servers
		Then the request should be successful

	Scenario: Server Specific ID Operations
		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|every|AWS|INITIALIZED|birch|atom|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|every|AWS|INITIALIZED|birch|atom|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|jovial|AWS|CONNECTED|lemon|candy|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|jovial|AWS|CONNECTED|lemon|candy|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|triumph|AWS|INITIALIZED|triumph|candy|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|triumph|AWS|INITIALIZED|triumph|candy|Candidate|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|atom|GCP|INITIALIZED|triumph|yawp|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|atom|GCP|INITIALIZED|triumph|yawp|Disabled|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|illicit|GCP|UNKNOWN|atom|rest|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|illicit|GCP|UNKNOWN|atom|rest|Candidate|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|kick|GCP|CONNECTED|illicit|xylophone|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|kick|GCP|CONNECTED|illicit|xylophone|Disabled|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|rest|AWS|CONNECTED|candy|triumph|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|rest|AWS|CONNECTED|candy|triumph|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|slice|AWS|INITIALIZED|nibble|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|slice|AWS|INITIALIZED|nibble|slice|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|rest|AWS|INITIALIZED|slice|vacuous|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|rest|AWS|INITIALIZED|slice|vacuous|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|atom|AWS|CONNECTED|flavor|zoology|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|atom|AWS|CONNECTED|flavor|zoology|Candidate|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|slice|GCP|CONNECTED|jovial|illicit|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|slice|GCP|CONNECTED|jovial|illicit|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|query|AWS|CONNECTED|slice|nibble|Candidate|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|query|AWS|CONNECTED|slice|nibble|Candidate|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|triumph|AWS|INITIALIZED|mastery|vacuous|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|triumph|AWS|INITIALIZED|mastery|vacuous|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|illicit|AWS|INITIALIZED|osprey|past|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|illicit|AWS|INITIALIZED|osprey|past|Disabled|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|under|AWS|UNKNOWN|every|dandelion|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|under|AWS|UNKNOWN|every|dandelion|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|under|GCP|UNKNOWN|osprey|mastery|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|under|GCP|UNKNOWN|osprey|mastery|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|rest|GCP|CONNECTED|atom|rest|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|rest|GCP|CONNECTED|atom|rest|Disabled|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|lemon|GCP|UNKNOWN|xylophone|yawp|Disabled|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|lemon|GCP|UNKNOWN|xylophone|yawp|Disabled|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|under|AWS|CONNECTED|kick|slice|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|under|AWS|CONNECTED|kick|slice|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

		When SuperAdmin chooses a random server from all servers
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful

		When SuperAdmin updates the random object from servers:
			|certificate|environment|operationalStatus|name|description|status|
			|birch|AWS|CONNECTED|rest|atom|Active|
		Then the update should be successful
		When SuperAdmin asks for the random object from servers 
		Then the request should be successful
		And the body of the response should contain:
			|certificate|environment|operationalStatus|name|description|status|
			|birch|AWS|CONNECTED|rest|atom|Active|

		When SuperAdmin deletes the random object from servers 
		Then the delete should be successful

