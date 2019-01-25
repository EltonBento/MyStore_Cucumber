class CustomerServicePage < SitePrism::Page
    set_url '?controller=contact'

    element :subject, '#id_contact'
    element :email, '#email'
    element :order_reference, '#id_order'
    element :message, '#message'
    element :send_btn, '#submitMessage'




    def send_message
        select 'Customer service', from: subject, visible:false
        email.set 'test@teste.com'
        order_reference.set '123456'
        message.set 'Lorem ipsum dolor sit amet, consectetur adipiscing
        elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
        ex ea commodo consequat. '
        send_btn.click
    end
    

    def send_blank_message
        select 'Customer service', from: subject, visible:false
        email.set 'test@teste.com'
        order_reference.set '123456'        
        send_btn.click
    end    

    def send_blank_email
        select 'Customer service', from: subject, visible:false
        order_reference.set '123456'
        message.set 'Lorem ipsum dolor sit amet, consectetur adipiscing
        elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
        ex ea commodo consequat. '
        send_btn.click
    end
    

    def send_blank_subject
        email.set 'test@teste.com'
        order_reference.set '123456'
        message.set 'Lorem ipsum dolor sit amet, consectetur adipiscing
        elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
        ex ea commodo consequat. '
        send_btn.click
    end

    




end    