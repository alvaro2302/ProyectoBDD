Given("estoy en la pagina mostrarTablaVacia") do
    visit('/mostrarTablaVacia')
  end


Then("Veo la tabla {string}") do |string|
    tablehtml = find('table').native.inner_html  
    tablehtml.delete!("\n") 
    tablehtml.should include(string)
    
  end

