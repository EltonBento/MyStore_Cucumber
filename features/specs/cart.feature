Feature: Cart

Scenario: Adding products to the cart home page
    Given I am at the home page
    When I add 1 item to the cart
    Then the cart should have 1 product

Scenario: Deleting products from the cart home page
    Given I am at the home page
        And I have 1 product in the cart
    When I delete 1 product from the cart
    Then the cart should be empty

Scenario: Adding more than 2 of the same product in the cart
    Given I am at a product page
    When I add to products in the cart
    Then the cart should have at least 2 product

Scenario: Deleting products from the cart page
    Given I am at the cart page
        And I have 1 product in the cart
    When I delete 1 product from the cart
    Then the cart should be empty
