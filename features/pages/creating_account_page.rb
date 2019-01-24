class CreateAccoutPage < SitePrism::Page
    set_url '?controller=authentication&back=my-account#account-creation'

    element :first_name, '#customer_firstname'
    element :last_name, '#customer_lastname'
    element :password, '#passwd'
    element :address, '#address1'
    element :city, '#city'
    element :zip_code,'#postcode'
    element :mobile_phone,'#phone_mobile'
    element :register_btn,'#submitAccount'
    

    def create_an_account
        wait_for_first_name
        first_name.set 'Nancy'
        last_name.set 'Larsen'
        password.set '123456'
        address.set '2224 Pearlman Avenue'
        city.set 'Cambridge'      
        zip_code.set '02142'
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false
        select 'Massachusetts', from: 'id_state', visible:false        
        mobile_phone.set '617-540-0923'
        register_btn.click
    end    


    def create_an_account_without_firstname
        wait_for_first_name
        last_name.set 'Larsen'
        password.set '123456'
        address.set '2224 Pearlman Avenue'
        city.set 'Cambridge'      
        zip_code.set '02142'        
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false
        select 'Massachusetts', from: 'id_state', visible:false  
        mobile_phone.set '617-540-0923'
        register_btn.click
    end    

    def create_an_account_without_lastname
        wait_for_first_name
        first_name.set 'Nancy'
        password.set '123456'
        address.set '2224 Pearlman Avenue'
        city.set 'Cambridge'      
        zip_code.set '02142'
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false
        select 'Massachusetts', from: 'id_state', visible:false  
        mobile_phone.set '617-540-0923'
        register_btn.click
    end
    
    def create_an_account_without_password
        wait_for_first_name
        first_name.set 'Nancy'
        last_name.set 'Larsen'
        address.set '2224 Pearlman Avenue'
        city.set 'Cambridge'      
        zip_code.set '02142'
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false
        select 'Massachusetts', from: 'id_state', visible:false
        mobile_phone.set '617-540-0923'
        register_btn.click
    end 

    def create_an_account_without_address
        wait_for_first_name
        first_name.set 'Nancy'
        last_name.set 'Larsen'
        password.set '123456'
        city.set 'Cambridge'      
        zip_code.set '02142'
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false
        select 'Massachusetts', from: 'id_state', visible:false  
        mobile_phone.set '617-540-0923'
        register_btn.click
    end 

    def create_an_account_without_city
        wait_for_first_name
        first_name.set 'Nancy'
        last_name.set 'Larsen'
        password.set '123456'
        address.set '2224 Pearlman Avenue'
        zip_code.set '02142'
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false
        select 'Massachusetts', from: 'id_state', visible:false  
        mobile_phone.set '617-540-0923'
        register_btn.click
    end 

    def create_an_account_without_country
        wait_for_first_name
        first_name.set 'Nancy'
        last_name.set 'Larsen'
        password.set '123456'
        address.set '2224 Pearlman Avenue'
        city.set 'Cambridge'      
        zip_code.set '02142'
        # The elements in this select are being hidden through css, therefore it's 
        # necessary to use visible:false.
        select '-', from: 'id_country', visible:false
        mobile_phone.set '617-540-0923'
        register_btn.click
    end 

    def create_an_account_without_state
        wait_for_first_name
        first_name.set 'Nancy'
        last_name.set 'Larsen'
        password.set '123456'
        address.set '2224 Pearlman Avenue'
        city.set 'Cambridge'      
        zip_code.set '02142'
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false      
        mobile_phone.set '617-540-0923'
        register_btn.click
    end 

    def create_an_account_without_zipCode
        wait_for_first_name
        first_name.set 'Nancy'
        last_name.set 'Larsen'
        password.set '123456'
        address.set '2224 Pearlman Avenue'
        city.set 'Cambridge'
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false
        select 'Massachusetts', from: 'id_state', visible:false  
        mobile_phone.set '617-540-0923'
        register_btn.click
    end 

    def create_an_account_without_mobilePhone
        wait_for_first_name
        first_name.set 'Nancy'
        last_name.set 'Larsen'
        password.set '123456'
        address.set '2224 Pearlman Avenue'
        city.set 'Cambridge'      
        zip_code.set '02142'
        # The elements in this select are being hidden through css,therefore it's 
        # necessary to use visible:false.
        select 'United States', from: 'id_country', visible:false
        select 'Massachusetts', from: 'id_state', visible:false  
        register_btn.click
    end 
end