Feature: Table Size

   Como jugador 
   Quiero elegir el tamaño de la tabla 
   Para personalizar mi juego

   Scenario: Opciones de tamaño 
   Given estoy en la pagina modoJuego
   Then deberia ver el mensaje: "tamaño del tablero:"

   Scenario: Elegir el tamaño 3 x 3
   Given estoy en la pagina modoJuego
   When presiono el boton '3X3'
   Then deberia ver la pagina con titulo 'CANTIDAD JUGADORES'

   Scenario: Elegir el tamaño 4 x 4
   Given estoy en la pagina modoJuego
   When presiono el boton '4X4'
   Then deberia ver la pagina con titulo 'CANTIDAD JUGADORES'

   Scenario: Elegir el tamaño 5 x 5
   Given estoy en la pagina modoJuego
   When presiono el boton '5X5'
   Then deberia ver la pagina con titulo 'CANTIDAD JUGADORES'

   Scenario: Elegir el tamaño 6 x 6
   Given estoy en la pagina modoJuego
   When presiono el boton '6X6'
   Then deberia ver la pagina con titulo 'CANTIDAD JUGADORES'

   Scenario: Elegir el tamaño 7 x 7
   Given estoy en la pagina modoJuego
   When presiono el boton '7X7'
   Then deberia ver la pagina con titulo 'CANTIDAD JUGADORES'