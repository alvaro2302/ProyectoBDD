Given("visito la pagina bienvenida") do
  visit('/')
end

Then("deberia ver el mensaje {string}") do |mensaje|
  expect(page).to have_content(mensaje)
end

When("presiono el boton {string}") do |boton|
  click_button(boton)
end

Then("deberia ver la pagina con titulo {string}") do |string|
  expect(page).to have_content(string)
end