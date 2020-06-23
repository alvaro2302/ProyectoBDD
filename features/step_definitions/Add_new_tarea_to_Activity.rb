Given("Loged in as Director at Gestion de Indicadores") do
  page.driver.browser.manage.window.maximize
  visit('https://sistemapei.herokuapp.com')
  click_on ('Iniciar Sesión')
  fill_in 'session_email', :with => ENV['USER']
  fill_in 'session_password', :with => ENV['PSW']
  click_on('Iniciar Session')
  click_on('Gestión de Indicadores')
end

When("selected Ingenieria de Sistemas and year desired") do
  find("#career_id").select("Ingeniería de Sistemas")
  find("#anio").select("2020")
  click_on("1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA")
end

Then("I should see my Activities table as below:") do |table|
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
end

Given("I select an Activity and press its Lista de Tareas") do
  click_on("/html/body/strong/div/div[2]/div/table/tbody/tr[1]/td[9]/a")
end

When("I add Nombre and Descripcion to the new tarea and send the information") do
  pending # Write code here that turns the phrase above into concrete actions
end