Feature: darJugada

    Como un jugador
    Quiero dibujar una línea en el tablero
    Para poder hacer mi jugada

    Scenario: se muestra la jugada  
        Given estoy en la pagina mostrarTablaVacia  
        When ingreso posicion '0' en el primer campo 'fila'
        And ingreso psoicion '0' en el primer campo 'columna'
        And presiono el boton 'Arriba'
        Then Veo la tabla '<tr>   <td class=" td-border-top"></td>   <td class=""></td></tr><tr>   <td class=""></td>   <td class=""></td></tr>'

   
      