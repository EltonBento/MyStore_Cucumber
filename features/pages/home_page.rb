class HomePage < SitePrism::Page


    element :popular_product_1, 'a[title="Faded Short Sleeve T-shirts"]'
    element :popular_product_2, 'a[title="Blouse"]'
    element :add_product_1_btn, 'a[data-id-product="1"]'
    element :add_product_2_btn,'a[data-id-product="2"]'
    element :cart_menu, 'a[title="View my shopping cart"]'
    element :remove_from_cart_btn, 'a.ajax_cart_block_remove_link'
  


    def add_one_product
        popular_product_1.hover
        add_product_1_btn.click
        #Clicking in the button (that is a span) 'continue shopping'
        page.find(:xpath,'//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span').click        
    end    

    def delete_one_product
        cart_menu.hover
        remove_from_cart_btn.click
    end   
end    

