Given("estoy en la pagina mostrarUserName") do
    visit('/mostrarUserName')
  end
  
  When("ingreso el nombre de {string} en el primer campo con id {string}") do |string, string2|
    fill_in string2, with: string
  end
  
  When("ingreso el nombre de {string} en el segundo campo con id {string}") do |string, string2|
    fill_in string2, with: string
  end
  
  Then("Veo el turno  {string}") do |string|
    expect(page).to have_content(string)
  end

  When("ingreso posicion {string} en el primer campo {string}") do |string, string2|
    fill_in string2, with: string
  end
  
  When("ingreso psoicion {string} en el primer campo {string}") do |string, string2|
    fill_in string2, with: string
  end