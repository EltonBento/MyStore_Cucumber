class ProductPage < SitePrism::Page
    set_url '?id_product=1&controller=product'

    element :quantity_wanted, '#quantity_wanted'
    element :quantity_up_btn, 'a.btn btn-default button-plus product_quantity_up'
    element :add_to_cart_btn, '#add_to_cart > button'


    def add_two_products        
        quantity_wanted.set '2'
        add_to_cart_btn.click
        page.find(:xpath,'//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span').click        
    end


    def add_products(number)        
        quantity_wanted.set number
        add_to_cart_btn.click
        page.find(:xpath,'//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span').click        
    end

end    