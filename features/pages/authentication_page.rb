class AuthenticationPage < SitePrism::Page
    set_url '?controller=authentication&back=my-account'

    #Create an account
    element :email_create,'#email_create'
    element :create_account_btn,'#SubmitCreate'
    #Already registered?
    element :email, '#email'
    element :password, '#passwd'
    element :sign_in_btn,'#SubmitLogin'

    def enter_email
        number1 = rand(10)
        number2= rand(1000)
        email_create.set "#{number1}_testEmail_#{number2}@test.com"
        create_account_btn.click
    end     

    def login_successfully
        email.set 'tt@xc.com'
        password.set '12345'
        sign_in_btn.click    
    end 

    def login_with_blank_email
        sign_in_btn.click
    end    

    def login_with_blank_password
        email.set 'tt@xc.com'
        sign_in_btn.click
    end   

    def login_with_wrong_password
        email.set 'tt@xc.com'
        password.set '21345'
        sign_in_btn.click
    end


    def logout
        
    end

end    