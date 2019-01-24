When("I login") do
    authentication_page.login_successfully
end
  
Then("I have to have access to my account page") do
    @text = find('.page-heading')
    expect(@text.text).to eql 'MY ACCOUNT'
end
  
When("I try to login without filling the e-mail field") do
    authentication_page.login_with_blank_email
end
  
When("I try to login just filling the e-mail field") do
    authentication_page.login_with_blank_password
end
  
  
When("I try to login using an user with wrong password") do
    authentication_page.login_with_wrong_password
end
  
Given("I am logged in") do
    authentication_page.load
    authentication_page.login_successfully
end
  
When("I Logout") do
   #finding logout link/button
   #selecting the a that is fineshed with 'mylogout='
  find('a[href$="mylogout="]').click 
end
  
Then("I should redirect to the authentication page") do
  expect(page).to have_current_path("http://automationpractice.com/index.php?controller=authentication&back=my-account")
end
