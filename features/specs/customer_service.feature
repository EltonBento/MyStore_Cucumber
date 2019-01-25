
Feature: customer service



Scenario: Successful send message
Given I am at customer service page
When I send a message 
Then The message should be sent successfully


Scenario: Send blank message
Given I am at customer service page
When I try to send a blank message
Then I should get "The message cannot be blank." message

@CostumerService
Scenario: Send message without filling the field e-mail
Given I am at customer service page
When I try to send message without filling the field e-mail
Then I should get "Invalid email address." message

@CostumerService
Scenario: Send message without filling the field subject
Given I am at customer service page
When I try to send message without filling the field subject
Then I should get "Please select a subject from the list provided." message
