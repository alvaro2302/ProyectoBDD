require "./lib/casilla"
require "./lib/tablero"

describe Tablero do

    it "cuando marque derecha en la posicion '0,0' en una casilla ,si hay una alado deberia estar marcado izquierda" do
        tablero = Tablero.new(4,4)
        tablero.marcarDerecha(0,0)
        casilla = tablero.obtenerCasilla(0,0) 
        expect(casilla.LadoDerecha()).to eq(true)
        casillaDeAlado = tablero.obtenerCasilla(0,1) 
        expect(casillaDeAlado.LadoIzquierda()).to eq(true)
       
    end

    it "cuando marque izquierda  en la posicion '0,0' en una casilla ,solo deberia marcar izquierda" do
        tablero = Tablero.new(4,4)
        tablero.marcarIzquierda(0,0)
        casilla = tablero.obtenerCasilla(0,0) 
        expect(casilla.LadoIzquierda()).to eq(true)
    end

    it "cuando marque izquierda  en la posicion '1,1' en una casilla , deberia marcar izquierda y derecha de alado" do
        tablero = Tablero.new(4,4)
        tablero.marcarIzquierda(1,1)
        casilla = tablero.obtenerCasilla(1,1) 
        casillaDeAlado = tablero.obtenerCasilla(1,0) 
        expect(casilla.LadoIzquierda()).to eq(true)
        expect(casillaDeAlado.LadoDerecha()).to eq(true)

        
    end

    it "cuando marque arriba  en la posicion '0,0' en una casilla . deberia marcar solo arriba  " do
        tablero = Tablero.new(4,4)
        tablero.marcarArriba(0,0)
        casilla = tablero.obtenerCasilla(0,0)
        expect(casilla.LadoArriba()).to eq(true)

    end    

    
    it "cuando marque arriba  en la posicion '1,1' en una casilla . deberia marcar arriba y abajo de la casilla de alado " do
        tablero = Tablero.new(4,4)
        tablero.marcarArriba(1,1)
        casilla = tablero.obtenerCasilla(1,1)
        casillaDeAlado = tablero.obtenerCasilla(0,1)
        expect(casilla.LadoArriba()).to eq(true)
        expect(casillaDeAlado.LadoAbajo()).to  eq(true)
    end    

    it "cuando marque abajo  en la posicion '0,0' en una casilla . deberia marcar  abajo y la casilla de alado deberia maracar arriba  " do
        tablero = Tablero.new(4,4)
        tablero.marcarAbajo(1,1)
        casilla = tablero.obtenerCasilla(1,1)
        casillaDeAlado = tablero.obtenerCasilla(2,1)
        expect(casilla.LadoAbajo()).to eq(true)
        expect(casillaDeAlado.LadoArriba()).to  eq(true)
       

    end

    it "cuando marque abajo  en la posicion '3,0' en una casilla . deberia marcar  solo abajo   " do
        tablero = Tablero.new(4,4)
        tablero.marcarAbajo(3,0)
        casilla = tablero.obtenerCasilla(3,0)
        expect(casilla.LadoAbajo()).to eq(true)
    
    end

    it "si empiezo el tablero  de 2 filas y 2 columnas deberia haber 12 jugadas restantes" do
        tablero = Tablero.new(2,2)
        expect(tablero.jugadasRestantes()).to eq(12)
    end

    it "si empiezo el tablero  de 3 filas y 3 columnas deberia haber 24 jugadas restantes" do
        tablero = Tablero.new(3,3)
        expect(tablero.jugadasRestantes()).to eq(24)
    end

    it "si empiezo el tablero  de 1 filas y 1 columnas deberia haber 4 jugadas restantes" do
        tablero = Tablero.new(1,1)
        expect(tablero.jugadasRestantes()).to eq(4)
    end
    it "si empiezo el tablero de 4 filas y 4 columnas deberia haber 40 jugadas restantes" do
        tablero = Tablero.new(4,4)
        expect(tablero.jugadasRestantes()).to eq(40)
    end
    it "si empiezo el tablero  de 3 filas y 2 columnas deberia haber 17 jugadas restantes" do
        tablero = Tablero.new(3,2)
        expect(tablero.jugadasRestantes()).to eq(17)
    end

    it "si marco un lado Arriba de la tabla deberia restarse las jugadas restantes a 11" do
        tablero = Tablero.new(2,2)
        tablero.marcarArriba(0,0)
        expect(tablero.jugadasRestantes()).to eq(11)

    end

    it "si marco un lado Abajo de la tabla deberia restarse las jugadas restantes a 11" do
        tablero = Tablero.new(2,2)
        tablero.marcarAbajo(0,0)
        expect(tablero.jugadasRestantes()).to eq(11)
        
    end

    it "si marco un lado izquierda de la tabla deberia restarse las jugadas restantes a 11" do
        tablero = Tablero.new(2,2)
        tablero.marcarIzquierda(0,0)
        expect(tablero.jugadasRestantes()).to eq(11)
        
    end

    it "si marco un lado derecha de la tabla deberia restarse las jugadas restantes a 11" do
        tablero = Tablero.new(2,2)
        tablero.marcarDerecha(0,0)
        expect(tablero.jugadasRestantes()).to eq(11)
        
    end

    it "si marco todas las lineas en el tablero deberia  devolver el resultado 0 en jugadas restantes" do
        tablero = Tablero.new(2,2)
        tablero.marcarArriba(0,0)
        tablero.marcarAbajo(0,0)
        tablero.marcarDerecha(0,0)
        tablero.marcarIzquierda(0,0)
        tablero.marcarArriba(0,1)
        tablero.marcarDerecha(0,1)
        tablero.marcarAbajo(0,1)
        tablero.marcarIzquierda(1,0)
        tablero.marcarAbajo(1,0)
        tablero.marcarDerecha(1,0)
        tablero.marcarDerecha(1,1)
        tablero.marcarAbajo(1,1)
        expect(tablero.jugadasRestantes()).to eq(0)
        
    end

    it "si doy una jugada deberia restarse la cantidad de jugadas en el tablero a 11" do
        tablero = tablero  = Tablero.new(2,2)
        game = Game.new(tablero)
        #añadiendo nombre al primer jugador
        game.darNombre(1,"alejandro")
        #añadiendo nombre al segundo jugador
        game.darNombre(2,"alex")
        game.darJugada(0,0,"Arriba")
        jugadasRestantes = game.obtenerJugadasRestantes()
        expect(jugadasRestantes).to eq(11)
    end

    it "si apreto reiniciar deberia devolverme el total del jugadas que pueden haber en el tablero" do
        tablero = tablero = Tablero.new(4,4)
        game = Game.new(tablero)
        jugadasRestantes = game.obtenerJugadasRestantes()
        expect(jugadasRestantes).to eq(40)
    end
    



    

  




    



    


end