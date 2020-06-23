Feature: Report from activities by date 
   As a Docente de Tiempo Completo
   I want to see my activities
   so I can know my activities

Background:
   Given I add the compliance date and assign the manager to "alejandro"

Scenario: Report from activities by date
   Given I am on the PEI Online homepage and login for Docente de Tiempo Completo
   When clicked in "Reportes"
   And next clicked in "Actividades por fechas" 
   And selected the correct "2020-03-02" and "2020-04-03"
   Then I should see a row of activities table:
   | Actividad                                                                         | Fecha Inicio  | Fecha Fin     | Evidencia       | Encargado       | Fecha cumplimiento |
   | 2. REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS        | 02-03-2020    | 03-04-2020    | ACTA DE REUNIÓN | alejandro       | 03-03-2020         |      


