Feature: Show Docente Tiempo Completo Activity
   As a Director
   I want see a Docente Tiempo Completo activity in an specified year
   so I can know what activity is carried by Docente Tiempo Completo

Background:
    Given I am on the PEI Online homepage and login

Scenario: list Tareas from Activity
   Given I add an activity to Professor "alejandro"
   When clicker in "Control y Seguimiento"   
   And selected "alejandro" and the year "2020" desired
   Then I should see a row of activities for that Docente Tiempo Completo table:
   | Actividad                                                                         | Fecha Inicio  | Fecha Fin     | Evidencia       | Encargado       |
   | 1. REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS        | 27-01-2020    | 24-02-2020    | ACTA DE REUNIÓN | alejandro       |
