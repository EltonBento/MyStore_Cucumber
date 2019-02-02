
Feature: Cart


Scenario: Adding products to the cart home page
Given I am at the home page
When I add one item to the cart
Then the cart should have 1 product

Scenario: Deleting products from the cart home page
Given I am at the home page
And I have one product in the cart
When I delete one product from the cart
Then the cart should be empty

@cart
Scenario: Adding more than 2 of the same product in the cart
Given I am at a product page
When I add to products in the cart
Then the cart should have 2 product

Scenario: Deleting products from the cart page
Given I am at the home page
And I have one product in the cart
And I go to the order page
When I delete one product from the order page
Then the cart should be empty
