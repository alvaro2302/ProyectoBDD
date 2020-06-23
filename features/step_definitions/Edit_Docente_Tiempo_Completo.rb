Given("I am create user DTC") do
    click_on("DTCs")
    click_on("Registrar Nuevo DTC")
    fill_in 'user_name', :with => "carlos canedo"
    fill_in 'user_email', :with => ENV['NEWDTC']

    find("#careers_ids").select("Ingeniería de Sistemas")
    fill_in 'user_password', :with => ENV['NEWPSWDTC']
    fill_in 'user_password_confirmation', :with => ENV['NEWPSWDTC']
    click_on("Crear cuenta")
end
  
When("I click on Edit button from a Docente Tiempo Completo") do 
   xpathEdit= '/html/body/strong/div/div[2]/table/tbody/tr[12]/td[5]/a'
   find(:xpath, xpathEdit).click
end
  
When("I Enter the required fields as shown below") do
    fill_in 'user_name', :with => "carlos gutierrez"
    fill_in 'user_email', :with => "canedo123@gmail.com"

    find("#careers_ids").select("Ingeniería de Sistemas")
    
end

When("Save changes") do
   click_on("Guardar cambios")
    
end
  
Then("should the changes in the following table:") do |table|
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