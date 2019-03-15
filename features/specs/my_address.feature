Feature: My Addresses

Scenario: Adding a new address
Given I had signed in
And I am at My Addresses page
When I add a new address
Then I should see it in the My Address page

Scenario: Deleting an address
Given I had signed in
And I am at My Addresses page
And I have at least one address added before
When I delete the address
Then the address should be removed from the list
@address
Scenario: Updating an address
Given I had signed in
And I am at My Addresses page
And I have at least one address added before
When I update an address
Then the address should save and display the new information

