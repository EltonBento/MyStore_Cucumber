Given("I am at My Addresses page") do
    my_address_page.load
end
  
When("I add a new address") do
    my_address_page.add_new_address
    new_address_page.fill_address_form
end
  
Then("I should see it in the My Address page") do
    page.has_text?('New Address Test')
    
    #Removing the new address
    my_address_page.delete_last_address
    sleep(2)
end


Given("I have at least one address added before") do
    my_address_page.add_new_address
    new_address_page.fill_address_form
end
  
When("I delete the address") do
    my_address_page.delete_last_address
end
  
Then("the address should be removed from the list") do
    page.has_no_text?('New Address Test')    
end

When("I update an address") do
    my_address_page.update_last_address
    new_address_page.changing_address_information
end
  
Then("the address should save and display the new information") do
    page.has_text?('Update Test')
    page.has_text?('Nowhere St')

    #Removing the new address
    my_address_page.delete_last_address
    sleep(2)
end