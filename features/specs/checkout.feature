Feature: Checkout


Scenario: Successful checkout by check
Given I had signed in
And I have a product in the cart
When I checkout by check
Then my check purchase should be done successfully    

Scenario: successful checkout by bank wire
Given I had signed in
And I have a product in the cart
When I checkout by bank wire   
Then my bank wire purchase should be done successfully   
@checkout
Scenario: Checkout wihtout signing the terms of service
Given I had signed in
And I have a product in the cart
When I checkout without signing the terms of service
Then I should get an alert informing that is required