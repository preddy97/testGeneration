Feature: Root
    None

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: Root Resource Request
        When SuperAdmin requests root

Scenario: Root Specific CRUD Operations: Trial 1
        When SuperAdmin chooses a random Root from all root
        When SuperAdmin asks for the random object from root
        Then the request should be successful

        Scenario: Root Specific CRUD Operations: Trial 2
        When SuperAdmin chooses a random Root from all root
        When SuperAdmin asks for the random object from root
        Then the request should be successful

        Scenario: Root Specific CRUD Operations: Trial 3
        When SuperAdmin chooses a random Root from all root
        When SuperAdmin asks for the random object from root
        Then the request should be successful

        Scenario: Root Specific CRUD Operations: Trial 4
        When SuperAdmin chooses a random Root from all root
        When SuperAdmin asks for the random object from root
        Then the request should be successful

        Scenario: Root Specific CRUD Operations: Trial 5
        When SuperAdmin chooses a random Root from all root
        When SuperAdmin asks for the random object from root
        Then the request should be successful

        