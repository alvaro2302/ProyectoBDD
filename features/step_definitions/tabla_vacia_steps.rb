Given("Estoy en la pagina tablaVacia") do
    visit('/mostrarTablaVacia')
  end
  
  Then("veo la tabla vacia") do
    expect(page).to have_table('tabla')
  end

  Then("Veo el nombre del primer jugador {string}") do |string|
    expect(page).to have_content(string)
  end

  Then("Veo el nombre del segundo jugador {string}") do |string|
    expect(page).to have_content(string)
  end
 
  Then("Al lado del primer jugador veo el mensaje {string}") do |string|
    expect(page).to have_content(string)
  end

  Then("en la parte de abajo veo el boton {string}") do |string|
    expect(page).to have_button(string)
  end

Given("Estoy en la pagina tablaVaciaThree") do
  visit('/mostrarTablaVaciaThree')
end

Given("Estoy en la pagina tablaVaciaFour") do
  visit('/mostrarTablaVaciaFour')
end