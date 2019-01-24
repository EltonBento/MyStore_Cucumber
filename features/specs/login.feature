@login
Feature: Login


Scenario: Sucessful Login
Given I am at the authenticatian page
When I login 
Then I have to have access to my account page


Scenario: Login without filling e-mail address
Given I am at the authenticatian page
When I try to login without filling the e-mail field
Then I should get "An email address required." message


Scenario: Login without filling password
Given I am at the authenticatian page
When I try to login just filling the e-mail field
Then I should get "Password is required." message


Scenario: Login with wrong password
Given I am at the authenticatian page
When I try to login using an user with wrong password 
Then I should get "Authentication failed." message


Scenario: Log out
Given I am logged in
When I Logout
Then I should redirect to the authentication page
