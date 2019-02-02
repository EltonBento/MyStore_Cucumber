Given("I had signed in") do
    authentication_page.load
    authentication_page.login_successfully
end
  
Given("I have a product in the cart") do
    product_page.load
    product_page.add_products(1)    
end
  
When("I checkout by check") do
    order_page.load
    order_page.checkout_by_check
end
  
Then("my check purchase should be done successfully") do
    @text = find('#center_column > p.alert.alert-success')
    expect(@text.text).to eql 'Your order on My Store is complete.'
end

When("I checkout by bank wire") do
    order_page.load
    order_page.checkout_by_wire
end
  
Then("my bank wire purchase should be done successfully") do
    @text = find('#center_column > div > p')
    expect(@text.text).to eql 'Your order on My Store is complete.'
end

When("I checkout without signing the terms of service") do
    order_page.load
    order_page.checkout_without_checking_the_terms_of_service
end
  
Then("I should get an alert informing that is required") do
    @text = find('#order > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > p')
    expect(@text.text).to eq 'You must agree to the terms of service before continuing.'
end
