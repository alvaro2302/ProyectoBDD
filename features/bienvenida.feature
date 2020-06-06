Feature: Bienvenida
    Como jugador 
    Quiero ver un mensaje de bienvenida en el juego 
    Para sentirme a gusto desde el inicio

    Scenario: mensaje de bienvenida
        Given visito la pagina bienvenida
        Then deberia ver el mensaje "WELCOME TO"
   
    Scenario: boton iniciar
        Given visito la pagina bienvenida
        When presiono el boton "Iniciar"
        Then deberia ver la pagina con titulo "MODALIDAD DE JUEGO"
   
