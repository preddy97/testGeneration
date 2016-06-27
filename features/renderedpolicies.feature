Feature: RenderedPolicies
    RenderedPolicies attached to the given set of Subjects

    Background:
		Given I'm going to use the API: https://squall.aporeto.com:8443
		And the following authentications:
		| name       | namespace  |
		| SuperAdmin | SuperAdmin |

Scenario: RenderedPolicies Resource Request
        When SuperAdmin requests renderedpolicies

Scenario: RenderedPolicies Specific CRUD Operations: Trial 1
        When SuperAdmin chooses a random RenderedPolicies from all renderedpolicies
        When SuperAdmin asks for the random object from renderedpolicies
        Then the request should be successful

        Scenario: RenderedPolicies Specific CRUD Operations: Trial 2
        When SuperAdmin chooses a random RenderedPolicies from all renderedpolicies
        When SuperAdmin asks for the random object from renderedpolicies
        Then the request should be successful

        Scenario: RenderedPolicies Specific CRUD Operations: Trial 3
        When SuperAdmin chooses a random RenderedPolicies from all renderedpolicies
        When SuperAdmin asks for the random object from renderedpolicies
        Then the request should be successful

        Scenario: RenderedPolicies Specific CRUD Operations: Trial 4
        When SuperAdmin chooses a random RenderedPolicies from all renderedpolicies
        When SuperAdmin asks for the random object from renderedpolicies
        Then the request should be successful

        Scenario: RenderedPolicies Specific CRUD Operations: Trial 5
        When SuperAdmin chooses a random RenderedPolicies from all renderedpolicies
        When SuperAdmin asks for the random object from renderedpolicies
        Then the request should be successful

        