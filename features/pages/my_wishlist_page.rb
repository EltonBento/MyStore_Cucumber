class MyWishlistPage < SitePrism::Page 
    set_url '?fc=module&module=blockwishlist&controller=mywishlist'

    element :wishlist_name_field, '#name'
    element :save_btn, '#submitWishlist'
    element :delete_wishlist_btn, 'a[class="icon"]', visible:false
    element :wishlist_name_link, 'a[href="javascript:;"]'
    element :delete_item_btn,'#wlp_1_1 > div > div:nth-child(2) > div > a'

    def create_wishlist
        wishlist_name_field.set 'Buying later'
        save_btn.click        
    end

    def delete_wishlist
        delete_wishlist_btn.click
        page.accept_alert
    end

    def delete_item_from_wishlist
        wait_for_wishlist_name_link
        wishlist_name_link.click
        wait_for_delete_item_btn
        delete_item_btn.click
    end    



end    