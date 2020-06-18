Given("in the page login") do
    visit('https://sistemapei.herokuapp.com')
    click_on ('Iniciar Sesión')
end
  
When("enter username and password for Director") do
    fill_in 'session_email', :with => ENV['USER']
    fill_in 'session_password', :with => ENV['PSW']
    click_on('Iniciar Session')
end
  
Then("Home Page should be displayed for Director") do

    notificacion = '/html/body/nav/div/ul/li[1]/a'
    cargarPDF = '/html/body/nav/div/ul/li[2]/a'
    dtc  ='/html/body/nav/div/ul/li[3]/a'
    gestionDeIndicadores  ='/html/body/nav/div/ul/li[4]/a'
    controlYSeguimiento ='/html/body/nav/div/ul/li[5]/a'

    configurarPerfil = '/html/body/nav/div/ul/li[7]/a'

    expect(page).to have_xpath(notificacion, text: 'Notificar por email')
    expect(page).to have_xpath(cargarPDF, text: 'Cargar PDF')
    expect(page).to have_xpath(dtc, text: 'DTCs')
    expect(page).to have_xpath(gestionDeIndicadores, text: 'Gestión de Indicadores')
    expect(page).to have_xpath(controlYSeguimiento, text: 'Control y Seguimiento')
    
    expect(page).to have_xpath(configurarPerfil, text: 'Configurar Perfil')
    click_on('Cerrar Sesión')
end
  
When("enter username and password for DTC") do

    fill_in 'session_email', :with => ENV['USERDTC']
    fill_in 'session_password', :with => ENV['PSWDTC']
    click_on('Iniciar Session')
end
  
Then("Home Page should be displayed for DTC") do

    
    gestion = '/html/body/nav/div/ul/li[1]/a'
    configurarPerfil = '/html/body/nav/div/ul/li[3]/a'
    expect(page).to have_xpath(gestion, text: 'Gestión de Indicadores')
    expect(page).to have_xpath(configurarPerfil, text: 'Configurar Perfil')
    click_on('Cerrar Sesión')
end