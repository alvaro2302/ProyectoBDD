Feature: Three User Name
    
    Como jugador
    Quiero poder poner mi nombre de usuario
    Para que el juego me identifique

    Scenario: Espacio para escribir el nombre de cada jugador 
        Given estoy en la pagina userNameFour
        Then deberia ver un campo con id 'first_user_name'
        And deberia ver otro campo con id 'second_user_name'
        And deberia ver otro campo con id 'three_user_name'
        And deberia ver otro campo con id 'four_user_name'
    
    Scenario: boton Iniciar partida
        Given estoy en la pagina userNameFour
        When ingreso el nombre 'Jose' en el primer campo con id 'first_user_name'
        And ingreso el nombre 'Juan' en el segundo campo con id 'second_user_name'
        And ingreso el nombre 'Maria' en el segundo campo con id 'second_user_name'
        And ingreso el nombre 'Jorge' en el segundo campo con id 'second_user_name'
        And presiono el boton 'Iniciar Partida'
        Then deberia ver la pagina con titulo 'DOTS AND LINES'