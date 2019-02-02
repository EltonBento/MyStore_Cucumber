class OrderPage < SitePrism::Page
    set_url '?controller=order'

    element :delete_btn,'a[title="Delete"]'
    element :summary_proceed_to_checkout_btn, 'a.button.btn.btn-default.standard-checkout.button-medium'
    element :address_proceed_to_checkout_btn, '#center_column > form > p > button'
    element :terms_of_service_checkbox, '#cgv', visible:false
    element :shipping_proceed_to_checkout_btn, '#form > p > button'    
    element :pay_by_wire_btn, 'a.bankwire'
    element :pay_by_check_btn, 'a.cheque'
    element :confirm_my_order_btn, '#cart_navigation > button'


    def delete_one_product
        delete_btn.click    
    end     

    def checkout_by_check
        #summary part
        summary_proceed_to_checkout_btn.click
        #address part        
        address_proceed_to_checkout_btn.click
        #shipping part
        terms_of_service_checkbox.click
        shipping_proceed_to_checkout_btn.click
        #payment
        pay_by_check_btn.click
        #confirmation
        confirm_my_order_btn.click
    end

    
    
    def checkout_by_wire
        #summary part
        summary_proceed_to_checkout_btn.click
        #address part        
        address_proceed_to_checkout_btn.click
        #shipping part
        terms_of_service_checkbox.click
        shipping_proceed_to_checkout_btn.click
        #payment
        pay_by_wire_btn.click
        #confirmation
        confirm_my_order_btn.click
    end
    

    def checkout_without_checking_the_terms_of_service
        #summary part
        summary_proceed_to_checkout_btn.click
        #address part        
        address_proceed_to_checkout_btn.click
        #shipping part
        shipping_proceed_to_checkout_btn.click
        
    end
    

end    