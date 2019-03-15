Dir[File.join(File.dirname(__FILE__),"../pages/*_page.rb")].each {|file| require file }
#Getting all the files ending in pages.rb
#Doing the require to all the pages to each one of them


module Pages
    def authentication_page
        @authentication_page ||= AuthenticationPage.new
    end    
    
    def create_account_page
        @create_account_page ||= CreateAccoutPage.new
    end    

    def customer_service_page
        @customer_service_page ||= CustomerServicePage.new
    end 

    def home_page
        @home_page ||= HomePage.new
    end 

    def product_page
        @product_page ||= ProductPage.new
    end

    def order_page
        @order_page ||= OrderPage.new
    end

    def new_address_page
        @new_address_page ||= NewAddressPage.new
    end
    
    def my_address_page
        @my_address_page ||= MyAddressPage.new
    end    

    def my_wishlist_page
        @my_wishlist_page ||= MyWishlistPage.new
    end

end    
