class NewAddressPage <SitePrism::Page 

    element :address, '#address1'
    element :city, '#city'
    element :zip_code, '#postcode'
    element :phone, '#phone'
    element :address_title, '#alias'
    element :state, '#id_state'
    element :country, '#id_country'
    element :save_btn, '#submitAddress'


    def fill_address_form
        address.set '4859 Ferrell Street'
        city.set 'Grand Marais'        
        select 'United States', from: 'id_country' , visible:false
        select 'Minnesota', from: 'id_state', visible:false
        zip_code.set '55604'
        phone.set '218-387-0476'
        address_title.set 'New Address Test'
        save_btn.click
    end


    def changing_address_information
        address_title.set 'Update Test'
        address.set 'Nowhere St'
        save_btn.click
    end     
    
end    