Given("I am on the PEI Online homepage and login for Docente de Tiempo Completo") do
    page.driver.browser.manage.window.maximize
    visit('https://sistemapei.herokuapp.com')
    click_on ('Iniciar Sesión')
    fill_in 'session_email', :with => ENV['USERDTC']
    fill_in 'session_password', :with => ENV['PSWDTC']
    click_on('Iniciar Session')
end
  
Given("I add the compliance date and assign the manager to {string}") do |string|
    page.driver.browser.manage.window.maximize
    visit('https://sistemapei.herokuapp.com')
    click_on ('Iniciar Sesión')
    fill_in 'session_email', :with => ENV['USER']
    fill_in 'session_password', :with => ENV['PSW']
    click_on('Iniciar Session')
    click_on('Gestión de Indicadores')
    find("#career_id").select("Ingeniería de Sistemas")
    find("#anio").select("2020")
    click_on("1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA")
    xpath = '/html/body/strong/div/div[2]/div/table/tbody/tr[2]/td[8]/a'
    find(:xpath, xpath).click
    find("#users_ids").select(string)
    page.find('#activity_fulfillment').set("2020-03-03")
    click_on("Guardar cambios")
    click_on("Cerrar Sesión")
end
  
When("clicked in {string}") do |string|
    click_on(string)
end
  
When("next clicked in {string}") do |string|
    click_on(string)
end
  
When("selected the correct {string} and {string}") do |string, string2|
   
    page.find('#datepickerStart').set(string)
    page.find('#datepickerEnd').set(string2)
   
end
  
Then("I should see a row of activities table:") do |table|

    path= find("table")
    table.raw[1...table.raw.length].each_with_index do |row, row_index|
        colummn =2
        row.each_with_index do |value, index|
          xpathColumn ="/html/body/strong/div/div[3]/div/div/table/tbody/tr/td["+ colummn.to_s + "]"
          expect(path.find(:xpath, xpathColumn)).to have_content(value)
          colummn = colummn+1 
        end
        
    end
    click_on("Cerrar Sesión")
    page.driver.browser.manage.window.maximize
    visit('https://sistemapei.herokuapp.com')
    click_on ('Iniciar Sesión')
    fill_in 'session_email', :with => ENV['USER']
    fill_in 'session_password', :with => ENV['PSW']
    click_on('Iniciar Session')
    click_on('Gestión de Indicadores')
    find("#career_id").select("Ingeniería de Sistemas")
    find("#anio").select("2020")
    click_on("1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA")
    xpath = '/html/body/strong/div/div[2]/div/table/tbody/tr[2]/td[8]/a'
    find(:xpath, xpath).click
    find("#users_ids").select("docente3")
    click_on("Guardar cambios")
    click_on("Cerrar Sesión")

end