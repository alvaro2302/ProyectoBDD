When("in {string}") do |string|
    click_on ('Gestión de Indicadores')
end
  
When("selected desired {string}") do |string|

    find("#career_id").select(string)
end
  
When("selected a desired {string}") do |string|

    find("#anio").select(string)
end
  
Then("I should see my Activities table:") do |table|
    click_on("1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA")
    path= find("table")
    rowUnioque= 1
    table.raw[1...table.raw.length].each_with_index do |row, row_index|
        colummn =1
        row.each_with_index do |value, index|
          xpathColumn= "/html/body/strong/div/div[2]/div/table/tbody/tr["+ rowUnioque.to_s+ "]/td["+ colummn.to_s+"]"
          expect(path.find(:xpath, xpathColumn)).to have_content(value)
          colummn = colummn+1 
        end
        rowUnioque= rowUnioque+1
    end
    click_on ('Cerrar Sesión')
end