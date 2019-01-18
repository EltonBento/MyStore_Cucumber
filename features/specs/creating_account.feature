Feature: Create an account


Scenario: Creating an account successfully
    Given I am at the authenticatian page
    When I create an account
    Then My account should be created successfully

Scenario: Creating an account with invalid e-mail
    Given I am at the authenticatian page
    When I try to create an account with an invalid e-mail
    Then I should get "invalid e-mail" message 

Scenario: Creating an account without filling the field firstName 
    Given I am at the authenticatian page
    When I try to create an account without filling the field firstName
    Then I should get "firstname is required" message

Scenario: Creating an account without filling the field lastName 
    Given I am at the authenticatian page
    When I try to create an account without filling the field lastName
    Then I should get "lastname is required" message 

Scenario: Creating an account without filling the field Password
    Given I am at the authenticatian page
    When I try to create an account without filling the field Password
    Then I should get "passwd is required" message  

Scenario: Creating an account without filling the field Address
    Given I am at the authenticatian page
    When I try to create an account without filling the field Address
    Then I should get "address1 is required" message

Scenario: Creating an account without filling the field City
    Given I am at the authenticatian page
    When I try to create an account without filling the field City
    Then I should get "city is required" message

Scenario: Creating an account with an invalid Country
    Given I am at the authenticatian page
    When I try to create an account with an invalid Country
    Then I should get "Country is invalid" message

Scenario: Creating an account without selecting State
    Given I am at the authenticatian page
    When I try to create an account without selecting an state
    Then I should get "This country requires you to choose a State" message    

Scenario: Creating an account with an invalid Zip/Postal Code
    Given I am at the authenticatian page
    When I try to create an account with an invalid Zip/postal Code
    Then I should get "The Zip/Postal code you've entered is invalid" message

Scenario: Creating an account without a phone number
    Given I am at the authenticatian page
    When I try to create an account wihtout filling the field phone number
    Then I should get "You must register at least one phone number" message

Scenario: Creating an account with an e-mail already in use
    Given I am at the authenticatian page
    When I try to create an account with an e-mail already in use   
    Then  I should get "this e-mail address has already been registered" message