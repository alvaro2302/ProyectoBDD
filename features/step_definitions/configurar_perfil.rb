
When("I click on button {string}") do |string|
    click_on(string)
end
  
When("fill the fields and progress to {string}") do |string|

    fill_in 'user_day', :with => string
    click_on("Guardar cambios")
end
  
Then("should show me a message {string}") do |string|
    message = page.find("#user_day").native.attribute("validationMessage")
    expect(message).to have_content string
    
end