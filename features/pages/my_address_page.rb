class MyAddressPage < SitePrism::Page 
    set_url '?controller=addresses'

    element :add_new_address_btn, 'a[title="Add an address"]'
    element :delete_last_address_btn, '#center_column > div.addresses > div > div:nth-child(2) > ul > li.address_update > a:nth-child(2)'
    element :update_last_address_btn,'#center_column > div.addresses > div:nth-child(3) > div:nth-child(2) > ul > li.address_update > a:nth-child(1)'

    def add_new_address
        add_new_address_btn.click        
    end

    def delete_last_address
        delete_last_address_btn.click
        page.accept_alert        
    end
    
    def update_last_address
        update_last_address_btn.click
    end

end    