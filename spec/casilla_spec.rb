require "./lib/casilla"

describe Casilla do

  it "si se marca la parte de 'LadoArriba' deberia cambiar a 'true'" do
    casilla = Casilla.new()
    casilla.seleccionarLado("Arriba")
    expect( casilla.LadoArriba()).to eq(true)
  end

  it "si se marca la parte de 'LadoAbajo' deberia cambiar a 'true'" do
    casilla = Casilla.new()
    casilla.seleccionarLado("Abajo")
    expect( casilla.LadoAbajo()).to eq(true)
  end

  it "si se marca la parte de 'LadoDerecha' deberia cambiar a 'true'" do
    casilla = Casilla.new()
    casilla.seleccionarLado("Derecha")
    expect(casilla.LadoDerecha()).to eq(true)
  end

  it "si se marca la parte de 'LadoIzquierda' deberia cambiar a 'true'" do
    casilla = Casilla.new()
    casilla.seleccionarLado("Izquierda")
    expect(casilla.LadoIzquierda()).to eq(true)
  end

  it "si marco todos los lados deberia devolver true" do
    casilla = Casilla.new()
    casilla.seleccionarLado("Arriba") 
    casilla.seleccionarLado("Derecha") 
    casilla.seleccionarLado("Izquierda") 
    casilla.seleccionarLado("Derecha") 
    casilla.estaLLena()==true
  end

end