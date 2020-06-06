require_relative './tablero'
require_relative './jugador'
class Game
    attr_accessor :tablero, :matriz, :jugadorActual, :jugadorOne, :jugadorTwo, :numeroDejugadores, :GameOver
    def initialize(tablero)
        @tablero = tablero
        @matriz = tablero.obtenerMatriz
        @numeroDejugadores = 2 
        @jugadorActual = 1
        @jugadorOne = Jugador.new()
        @jugadorTwo = Jugador.new()
        @jugadorThree = Jugador.new()
        @jugadorFour = Jugador.new()
        @GameOver = false
    end

    def jugadorTwo()
        @jugadorTwo
    end

    def generarTabla
        htmlTable = ""
        
        @matriz.each do |fila|
            tr = "<tr>"
            htmlTable = htmlTable +tr
            fila.each do |columna|
                style = ""
                td = "   <td class="+style +"></td>"
                if columna.LadoArriba()
                    numeroDeJugador = columna.numeroJugadorLadoArriba
                    styleJugador = obtenerEstiloJugadorArriba(numeroDeJugador)
                    style =  style+styleJugador
                    
                end
                if columna.LadoAbajo()
                    numeroDeJugador = columna.numeroJugadorLadoAbajo
                    styleJugador = obtenerEstiloJugadorAbajo(numeroDeJugador)
                    style =  style + styleJugador
                end
                if columna.LadoDerecha()

                    numeroDeJugador = columna.numeroJugadorLadoDerecha
                    styleJugador = obtenerEstiloJugadorDerecha(numeroDeJugador)
                    style = style+ styleJugador
                    
                    
                end
                if columna.LadoIzquierda()
                    
                    numeroDeJugador = columna.numeroJugadorLadoIzquierda
                    styleJugador = obtenerEstiloJugadorIzquierda(numeroDeJugador)
                    style = style +styleJugador
                end
                style = "'"+style+"'"
                td = "   <td class="+style +"></td>"
               
               htmlTable = htmlTable + td
            end
            trSalida = "</tr>"
            htmlTable = htmlTable + trSalida
        end

        return htmlTable
        
    end

    def obtenerEstiloJugadorIzquierda(numeroJugador)

        estilo=""
        if numeroJugador == 1 
            estilo=" td-border-left"
        end
        if numeroJugador == 2
            estilo=" jugador2Izquierda"
        end
        if numeroJugador == 3
            estilo=" jugador3Izquierda"
        end
        if numeroJugador == 4
            estilo=" jugador4Izquierda"
        end

        return estilo

    end

    def obtenerEstiloJugadorAbajo(numeroJugador)

        estilo=""
        if numeroJugador == 1 
            estilo=" td-border-bottom"
        end
        if numeroJugador == 2
            estilo=" jugador2Abajo"
        end
        if numeroJugador == 3
            estilo=" jugador3Abajo"
        end
        if numeroJugador == 4
            estilo=" jugador4Abajo"
        end

        return estilo

    end

    def obtenerEstiloJugadorDerecha(numeroJugador)

        estilo=""
        if numeroJugador == 1 
            estilo=" td-border-right"
        end
        if numeroJugador == 2
            estilo=" jugador2Derecha"
        end
        if numeroJugador == 3
            estilo=" jugador3Derecha"
        end
        if numeroJugador == 4
            estilo=" jugador4Derecha"
        end

        return estilo
    end
    def obtenerEstiloJugadorArriba(numeroJugador)
        estilo=""
        if numeroJugador == 1 
            estilo=" td-border-top"
        end
        if numeroJugador == 2
            estilo=" jugador2Arriba"
        end
        if numeroJugador == 3
            estilo=" jugador3Arriba"
        end
        if numeroJugador == 4
            estilo=" jugador4Arriba"
        end

        return estilo

    end


    def darJugada(fila,columna,lado)
        if @tablero.esJugadaValida(fila,columna,lado)
            if lado == "Arriba"
                tablero.marcarArriba(fila,columna)
                ponerNumeroAJugadaArriba(@jugadorActual,fila,columna)
                if fila >0 
                    ponerNumeroAJugadaAbajo(@jugadorActual,fila-1,columna)
                    
                end
            end
            if lado == "Abajo"
                tablero.marcarAbajo(fila,columna)
                ponerNumeroAJugadaAbajo(@jugadorActual,fila,columna)
                if fila < tablero.filas()-1
                    ponerNumeroAJugadaArriba(@jugadorActual,fila+1,columna)
                    
                end
            end
            if lado == "Derecha"
                tablero.marcarDerecha(fila,columna)
                ponerNumeroAJugadaDerecha(@jugadorActual,fila,columna)
                if columna < tablero.columnas()-1
                    ponerNumeroAJugadaIzquierda(@jugadorActual,fila,columna+1)
                end

            end
            if lado == "Izquierda"
                tablero.marcarIzquierda(fila,columna)
                ponerNumeroAJugadaIzquierda(@jugadorActual,fila,columna)
                if columna >0 
                    ponerNumeroAJugadaDerecha(@jugadorActual,fila,columna-1)
                end
            end
            casilla = @tablero.obtenerCasilla(fila,columna)
            if casilla.estaLLena()
                jugadorActual = obtenerJugador(@jugadorActual)
                jugadorActual.aumentar_punto()
            end
            
            

            if @tablero.jugadasRestantes()==0
                @GameOver = true
            end
            cambiarTurno()
        end

    end

    def darNombre(numeroJugador,nombreJugador)
        if numeroJugador==1
            @jugadorOne.poner_nombre(nombreJugador)
        end
        if numeroJugador==2
            @jugadorTwo.poner_nombre(nombreJugador)
        end
        if numeroJugador==3
            @jugadorThree.poner_nombre(nombreJugador)
        end
        if numeroJugador==4
            @jugadorFour.poner_nombre(nombreJugador)
        end
    end

    def obtenerJugador(numero)
        if numero == 1
            return @jugadorOne
        end
        if numero == 2
            return @jugadorTwo
        end
        if numero == 3
            return @jugadorThree
        end
        if numero == 4
            return @jugadorFour
        end
    end

    def cambiarTurno()
        if @jugadorActual == @numeroDejugadores
            @jugadorActual = 1
        else
            turno = @jugadorActual +1
            @jugadorActual = turno
        end
    end

    def obtenerJugadorActual()
        return @jugadorActual
    end
    def obtenerJugadasRestantes()
        return @tablero.jugadasRestantes()
    end

    def ponerNumeroAJugadaArriba(numeroJugador,fila,columna)
        casilla = @tablero.obtenerCasilla(fila,columna)
        casilla.cambiarNumeroJugadorLadoArriba(numeroJugador)
    end
    def ponerNumeroAJugadaAbajo(numeroJugador,fila,columna)
        casilla = @tablero.obtenerCasilla(fila,columna)
        casilla.cambiarNumeroJugadorLadoAbajo(numeroJugador)
    end

    def ponerNumeroAJugadaIzquierda(numeroJugador,fila,columna)
        casilla = @tablero.obtenerCasilla(fila,columna)
        casilla.cambiarNumeroJugadorLadoIzquierda(numeroJugador)
    end
    def ponerNumeroAJugadaDerecha(numeroJugador,fila,columna)
        casilla = @tablero.obtenerCasilla(fila,columna)
        casilla.cambiarNumeroJugadorLadoDerecha(numeroJugador)
    end

    def selecionarCantidadDeJugadores(numeroJugadores)
        @numeroDejugadores = numeroJugadores
    end

    def obtenerCantidadDeJugadores
        return @numeroDejugadores
    end
    def obtenerCasilla(fila,columna)
        casilla = @tablero.obtenerCasilla(fila,columna)
        return casilla
    end

    def GameOver
        return @GameOver
    end
end
