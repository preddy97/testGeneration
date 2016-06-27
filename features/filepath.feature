Feature: FilePath
    FilePath is the path to the file system

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: FilePath Resource Request
        When SuperAdmin requests filepaths

Scenario: FilePath Specific CRUD Operations: Trial 1
        When SuperAdmin creates a FilePath in filepaths:
			|status|serverID|filepath|description|name|
			|Candidate|rest|mastery|hire|candy|

        When SuperAdmin chooses a random FilePath from all filepaths
        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful

        When SuperAdmin updates the random object from filepaths:
			|status|description|name|
			|Candidate|wyvern|great|

        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Candidate|wyvern|great|

        When SuperAdmin deletes the random object from filepaths:
        Then the delete should be successful

        Scenario: FilePath Specific CRUD Operations: Trial 2
        When SuperAdmin creates a FilePath in filepaths:
			|status|serverID|filepath|description|name|
			|Candidate|zoology|kick|atom|atom|

        When SuperAdmin chooses a random FilePath from all filepaths
        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful

        When SuperAdmin updates the random object from filepaths:
			|status|description|name|
			|Disabled|jovial|hire|

        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Disabled|jovial|hire|

        When SuperAdmin deletes the random object from filepaths:
        Then the delete should be successful

        Scenario: FilePath Specific CRUD Operations: Trial 3
        When SuperAdmin creates a FilePath in filepaths:
			|status|serverID|filepath|description|name|
			|Candidate|vacuous|rest|vacuous|osprey|

        When SuperAdmin chooses a random FilePath from all filepaths
        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful

        When SuperAdmin updates the random object from filepaths:
			|status|description|name|
			|Disabled|vacuous|slice|

        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Disabled|vacuous|slice|

        When SuperAdmin deletes the random object from filepaths:
        Then the delete should be successful

        Scenario: FilePath Specific CRUD Operations: Trial 4
        When SuperAdmin creates a FilePath in filepaths:
			|status|serverID|filepath|description|name|
			|Active|rest|xylophone|jovial|rest|

        When SuperAdmin chooses a random FilePath from all filepaths
        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful

        When SuperAdmin updates the random object from filepaths:
			|status|description|name|
			|Disabled|dandelion|rest|

        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Disabled|dandelion|rest|

        When SuperAdmin deletes the random object from filepaths:
        Then the delete should be successful

        Scenario: FilePath Specific CRUD Operations: Trial 5
        When SuperAdmin creates a FilePath in filepaths:
			|status|serverID|filepath|description|name|
			|Candidate|mastery|dandelion|zoology|every|

        When SuperAdmin chooses a random FilePath from all filepaths
        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful

        When SuperAdmin updates the random object from filepaths:
			|status|description|name|
			|Disabled|vacuous|nibble|

        When SuperAdmin asks for the random object from filepaths
        Then the request should be successful
        And the body of the response should contain:
			|status|description|name|
			|Disabled|vacuous|nibble|

        When SuperAdmin deletes the random object from filepaths:
        Then the delete should be successful

        