Feature: My Wishlist

#command to run the scenarios with a tagbundle exec cucumber -t@wishlist

Scenario: Create wishlist
Given I had signed in
And I am at My Wishlist page
When I create a new wishlist
Then the new wishlist should be displayed


Scenario: Delete wishlist
Given I had signed in
And I am at My Wishlist page
And I already have at least one wishlist created
When I delete the wishlist
Then the wishlist should be removed from the page

Scenario: Add one product into the wishlist
Given I had signed in
And I am at My Wishlist page
And I already have at least one wishlist created
When I add one product into the wishlist
Then I should have 1 product in my wishlist

@wishlist
Scenario: Delete one product from the wishlist
Given I had signed in
And I am at My Wishlist page
And I already have at least one wishlist created
When I add one product into the wishlist
And I delete the product from the wishlist
Then the wishlist should have no products
