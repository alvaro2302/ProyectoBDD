When("I am in the activity table") do
    click_on('Gestión de Indicadores')
    find("#career_id").select("Ingeniería de Sistemas")
    find("#anio").select("2020")
    click_on("1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA")
    xpathEditActivitie = '/html/body/strong/div/div[2]/div/table/tbody/tr[3]/td[8]/a'
    find(:xpath, xpathEditActivitie).click
end
  
When("edited the activity in observations for {string}") do |string|
    fill_in 'activity_observation', :with => string
end
  
When("add the compliance date {string}") do |string|
    page.find('#activity_fulfillment').set(string)
end
  
When("I add the manager to {string}") do |string|
    find("#users_ids").select(string)
    click_on("Guardar cambios")
end
  
Then("should show me the table:") do |table|
    path= find("table")
    table.raw[1...table.raw.length].each_with_index do |row, row_index|
        colummn =1
        row.each_with_index do |value, index|
          xpathColumn = "/html/body/strong/div/div[2]/div/table/tbody/tr[3]/td[" + colummn.to_s + "]"
          expect(path.find(:xpath, xpathColumn)).to have_content(value)
          colummn = colummn+1 
        end
        
    end

    xpathEditActivitie = '/html/body/strong/div/div[2]/div/table/tbody/tr[3]/td[8]/a'
    find(:xpath, xpathEditActivitie).click
    fill_in 'activity_observation', :with => "   "
    find("#users_ids").select("docente3")
    click_on("Guardar cambios")
    click_on("Cerrar Sesión")

end