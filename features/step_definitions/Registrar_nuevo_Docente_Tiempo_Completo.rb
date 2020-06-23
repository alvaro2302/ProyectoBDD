Given("clicked in {string} button") do |string|
    click_on("DTCs")
    click_on(string)
end
  
When("Nombre y Apellido are filled in") do

  
    fill_in 'user_name', :with => "carlos canedo"
    
    
    
end
  
When("e-mail is filled in") do
    fill_in 'user_email', :with => ENV['NEWDTC']
end
  
When("{string} is selected") do |string|
    find("#careers_ids").select(string)
end
  
When("password and password confirmation are filled in") do
    fill_in 'user_password', :with => ENV['NEWPSWDTC']
    fill_in 'user_password_confirmation', :with => ENV['NEWPSWDTC']
end  
When("{string} button is clicked") do |string|
    click_on(string)
end
Then("I should see a row with new Director Tiempo Completo's data in table:") do |table|
   
    path= find("table")
    table.raw[1...table.raw.length].each_with_index do |row, row_index|
        colummn =1
        row.each_with_index do |value, index|
          xpathColumn = "/html/body/strong/div/div[2]/table/tbody/tr[12]/td[" + colummn.to_s + "]"
          expect(path.find(:xpath, xpathColumn)).to have_content(value)
          colummn = colummn+1 
        end
        
    end
    buttonDelete = '/html/body/strong/div/div[2]/table/tbody/tr[12]/td[6]/a'
    find(:xpath, buttonDelete).click
    page.accept_alert
    click_on("Cerrar Sesión")
    


    
    
end