Given("I am at customer service page") do
    customer_service_page.load
end
  
When("I send a message") do
    customer_service_page.send_message
end
  
Then("The message should be sent successfully") do
    @text = find('#center_column > p')
    expect(@text.text).to eql 'Your message has been successfully sent to our team.'
end
  
When("I try to send a blank message") do
    customer_service_page.send_blank_message
end
  
  
When("I try to send message without filling the field e-mail") do
    customer_service_page.send_blank_email
end
  
When("I try to send message without filling the field subject") do
    customer_service_page.send_blank_subject
end