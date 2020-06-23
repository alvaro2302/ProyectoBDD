Given("I am on the PEI Online homepage and login") do
	page.driver.browser.manage.window.maximize
    visit('https://sistemapei.herokuapp.com')
    click_on ('Iniciar Sesión')
    fill_in 'session_email', :with => ENV['USER']
    fill_in 'session_password', :with => ENV['PSW']
    click_on('Iniciar Session')
end


When("upload document {string}") do |string|
    click_on('Cargar PDF')
    click_on('Cargar nuevo PDF')
    
    filename = '/features/documents/' + string

   

    file = File.join(Dir.pwd, filename)
    file = file.tr('/', '\\')
    find('input#upload_file', :visible => false).send_keys file



    xpath_button = '/html/body/strong/div/center/form/div[2]/div[1]/input'
    find(:xpath, xpath_button).click
end

Then("should show a message {string}") do |string|
    expect(page).to have_selector(:id, 'notice_wrapper', text: string)
    click_on('Cerrar Sesión')
end

