Feature: View a list of activities for Docente de Tiempo Completo
   
   As a Docente de Tiempo Completo
   I want to view my list of indicadores de carrera  given in a year
   so I can know and edit Activities set for a given year
Scenario: View a list of activites
    Given "Docente de Tiempo Completo" is already logged in.
    When "Ingenieria Civil" is selected
    And "2020" is the year selected
    Then Docente Tiempo Completo should see a row of the activities for the year.