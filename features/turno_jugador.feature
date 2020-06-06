Feature: Turno Jugador

    Como un jugador
    Quiero que el sistema diferencie los turnos 
    Para que el juego se realice sin problemas 

    Scenario: se muestra el turno del jugador1
        Given estoy en la pagina mostrarUserName  
        When ingreso el nombre de 'Jose' en el primer campo con id 'first_user_name'
        And ingreso el nombre de 'Juan' en el segundo campo con id 'second_user_name'
        And presiono el boton 'Iniciar Partida'
        Then Veo el turno  'turno del Jugador: Jose'

    Scenario: se muestra el turno del jugador2
        Given estoy en la pagina mostrarUserName  
        When ingreso el nombre de 'Jose' en el primer campo con id 'first_user_name'
        And ingreso el nombre de 'Juan' en el segundo campo con id 'second_user_name'
        And presiono el boton 'Iniciar Partida'
        And ingreso posicion '0' en el primer campo 'fila'
        And ingreso psoicion '0' en el primer campo 'columna'
        And presiono el boton 'Arriba'
        Then Veo el turno  'turno del Jugador: Juan'