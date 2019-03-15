Given("I am at My Wishlist page") do
    my_wishlist_page.load
end
  
When("I create a new wishlist") do
    my_wishlist_page.create_wishlist
end
  
Then("the new wishlist should be displayed") do
   page.has_text?('Buying later')
end


Given("I already have at least one wishlist created") do
    my_wishlist_page.create_wishlist
end
  
When("I delete the wishlist") do
    my_wishlist_page.delete_wishlist
end
  
Then("the wishlist should be removed from the page") do
    page.has_no_table?('#block-history > table')
end

When("I add one product into the wishlist") do
    product_page.load
    product_page.add_to_wishlist
end
  
Then("I should have {int} product in my wishlist") do |qty|
    my_wishlist_page.load
    @text = find('.bold.align_center')
    expect(@text.text).to eq qty.to_s
end
  

When("I delete the product from the wishlist") do
    my_wishlist_page.load
    my_wishlist_page.delete_item_from_wishlist

end
  
Then("the wishlist should have no products") do
    my_wishlist_page.wishlist_name_link.click
    @text = find('#block-order-detail > p')
    expect(@text.text).to eq 'No products'
end
