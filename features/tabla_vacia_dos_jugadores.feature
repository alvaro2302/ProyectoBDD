Feature: Tabla Vacia dos jugadores

    Como un jugador
    Quiero ver una tabla vacía
    Para poder empezar el juego

    Scenario: Tabla vacia
        Given Estoy en la pagina tablaVacia
        Then veo la tabla vacia

    Scenario: Nombre de los jugadores
        Given Estoy en la pagina tablaVacia
        Then Veo el nombre del primer jugador 'Primer Jugador: puntaje : 0'
        And Veo el nombre del segundo jugador 'Segundo Jugador: puntaje : 0'

    Scenario: Turno jugador correspondiente
        Given Estoy en la pagina tablaVacia
        Then Al lado del primer jugador veo el mensaje 'turno del Jugador:' 
        
    Scenario: Reiniciar partida
        Given Estoy en la pagina tablaVacia
        When presiono el boton 'Reiniciar'
        Then deberia ver la pagina con titulo "MODALIDAD DE JUEGO" 
