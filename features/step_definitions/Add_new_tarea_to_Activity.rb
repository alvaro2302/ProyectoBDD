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
