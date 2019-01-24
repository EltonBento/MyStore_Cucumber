Given("I am at the authenticatian page") do
  authentication_page.load
end

When("I create an account") do
    authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account
end
  

When("I try to create an account without filling the field firstName") do
    authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_firstname
end

When("I try to create an account without filling the field lastName") do
    authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_lastname
end

When("I try to create an account without filling the field Password") do
    authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_password
end

When("I try to create an account without filling the field Address") do
    authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_address
end

When("I try to create an account without filling the field City") do
    authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_city
end

When("I try to create an account with an invalid Country") do
    authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_country
end

When("I try to create an account without selecting an state") do
  authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_state
end

When("I try to create an account with an invalid zip-code") do
  authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_zipCode
end

When("I try to create an account wihtout filling the field phone number") do
  authentication_page.enter_email
    #page will chance
    create_account_page.create_an_account_without_mobilePhone
end


Then("My account should be created successfully") do
    @text = find('.page-heading')
    expect(@text.text).to eql 'MY ACCOUNT'
end


Then("I should get {string} message") do |message|
  @text = find('#center_column > div > ol > li:nth-child(1)')
  expect(@text.text).to eql message
end