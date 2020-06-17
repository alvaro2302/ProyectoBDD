Edit a list of activities for Docente de Tiempo Completo
   
   As a Docente de Tiempo Completo
   I want to view my list of indicadores de carrera  given in a year
   so I can know and edit Activities set for a given year
Scenario: View a list of activites
    Given "Docente de Tiempo Completo" is already logged in.
    And selected "Ingenieria Civil"
    And "2020" is the year selected
    And clicked on "Editar" button
    When "Evidendia de Usuario" is filled in
    And "Observaciones" is filled in
    And "Fecha de cumplimiento" is filled in
    And "Progreso" is filled in
    And "Guardar cambios" button is clicked
    Then new changes should be saved.