Given("estoy en la pagina modoJuego") do
    visit('/modoJuego')
  end
  
  Then("deberia ver el mensaje: {string}") do |mensaje|
    expect(page).to have_content(mensaje)
  end