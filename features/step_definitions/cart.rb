Given("I am at the home page") do
    visit ''
end
  
When("I add one item to the cart") do 
    home_page.add_one_product
end
  
Then("the cart should have one product") do
    @text = find('.ajax_cart_quantity')
    expect(@text.text).to eql '1'
end

Given("I have one product in the cart") do
    home_page.add_one_product
end
  
When("I delete one product from the cart") do
    home_page.delete_one_product
end
  
Then("the cart should be empty") do
    #Getting the attribute of the element span that displays the string 'empty'
    #The information is always there, however what changes is the style that can be 'inline-block' or 'none' 
    @text = find('.ajax_cart_no_product')[:style]
    #Checking if the style contains 'display: inline-block;'
    expect(@text).to match 'display: inline-block;'
end

Given("I am at a product page") do
    product_page.load
end
  
When("I add to products in the cart") do
    product_page.add_products(2)
end
  
Then("the cart should have {int} product") do |quantity|
    @text = find('.ajax_cart_quantity')
    expect(@text.text).to eql quantity.to_s
end

Given("I go to the order page") do
    order_page.load
end
  
When("I delete one product from the order page") do
    order_page.delete_one_product
end