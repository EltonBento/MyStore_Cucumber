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
end    
