Given("I am on the activity table") do
    click_on('Gestión de Indicadores')
    find("#career_id").select("Ingeniería de Sistemas")
    find("#anio").select("2020")
    click_on("1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA")

    xpathListActivies = '/html/body/strong/div/div[2]/div/table/tbody/tr[2]/td[9]/a'
    find(:xpath, xpathListActivies).click
    
end
  
When("I add the task {string} with description {string}") do |string, string2|
    click_on("Registrar nueva tarea")
    fill_in 'item_title', :with => string
    fill_in 'item_description', :with => string2
    click_on("Guardar cambios")
end
  
Then("I should see the  table:") do |table|


    rowUnique =1
    table.raw[1...table.raw.length].each_with_index do |row, row_index|
        xpathColumn = "/html/body/strong/div/div[4]/div/div[" + rowUnique.to_s + "]/div[1]/h3/a"
        find(:xpath, xpathColumn).click
        
        
        xpathTitle = '/html/body/strong/div/center/form/div[1]/div[1]/div/div/input'
        xpathDescription = '/html/body/strong/div/center/form/div[1]/div[2]/div/div/textarea'  

        title = find('#item_title', visible: false).value
        description  = find('#item_description', visible: false).value
        expect(title).to have_content row[0]
        expect(description).to have_content row[1]
        
         
        click_on("Volver atrás")
        rowUnique = rowUnique+1
        
    end

    xpathDeletefirstTask = '/html/body/strong/div/div[4]/div/div[1]/div[3]/a'
    find(:xpath, xpathDeletefirstTask).click
    page.accept_alert
    sleep 3
    xpathFinal = '/html/body/strong/div/div[4]/div/div/div[3]/a'
    find(:xpath, xpathFinal).click
    page.accept_alert
    click_on("Cerrar Sesión")
    


end