module Helper
    
    # Method responsable for taking a screenshot when the test is done 
    def screenshot(file_name,result)        
        #creating the file path
        file_path = "report/screenshots/test_#{result}"
        file = "#{file_name}/#{file_name}.png"
        page.save_screenshot(file)
        #Inserting the image into the report
        embed(file,'image/png','Click here')

    end
end