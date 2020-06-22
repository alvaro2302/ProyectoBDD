Given("I add an activity to Professor {string}") do |string|
    click_on('Gestión de Indicadores')
    find("#career_id").select("Ingeniería de Sistemas")
    find("#anio").select("2020")
    click_on("1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA")
    xpath = '/html/body/strong/div/div[2]/div/table/tbody/tr[1]/td[8]/a' 
    find(:xpath, xpath).click
    find("#users_ids").select(string)
    click_on("Guardar cambios")


end  
When("clicker in {string}") do |string|
    click_on(string)
end
  

When("selected {string} and the year {string} desired") do |string, string2|
    find("#user_id").select(string)
    find("#anio").select(string2)
end
  
Then("I should see a row of activities for that Docente Tiempo Completo table:") do |table|
    path= find("table")
    table.raw[1...table.raw.length].each_with_index do |row, row_index|
        colummn =2
        row.each_with_index do |value, index|
        
          xpathColumn ="/html/body/strong/div/div[3]/div/div/table/tbody/tr/td["+ colummn.to_s+ "]"  
          expect(path.find(:xpath, xpathColumn)).to have_content(value)
          colummn = colummn+1 
        end
        
    end

    click_on('Gestión de Indicadores')
    find("#career_id").select("Ingeniería de Sistemas")
    find("#anio").select("2020")
    click_on("1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA")
    xpath = '/html/body/strong/div/div[2]/div/table/tbody/tr[1]/td[8]/a' 
    find(:xpath, xpath).click
    find("#users_ids").select("docente3")
    click_on("Guardar cambios")
    click_on("Cerrar Sesión")

end