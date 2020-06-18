When("I change my name to {string}") do |string|
    click_on("Configurar Perfil")
    fill_in 'user_name', :with => string
end
  
When("announcements by mail to {string} days") do |string|
    fill_in 'user_day', :with => string
    fill_in 'user_password', :with => ENV['PSW']
    fill_in 'user_password_confirmation', :with => ENV['PSW']
    
    click_on("Guardar cambios")
end
  
Then("you should see the changes on my profile") do
    click_on("Configurar Perfil")
    name = find('#user_name', visible: false).value
    expect(name).to have_content "Alejandro Antonio"
    # expect(page).to have_content("10")

end