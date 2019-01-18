When("I create an account") do
   visit '?controller=authentication&back=my-account'
  
end
  

Then("My account should be created successfully") do
  sleep(2)
end