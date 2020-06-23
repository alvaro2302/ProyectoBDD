Feature: Edit a list of activities for Director
   
   As a Director
   I want to view my list of indicadores de carrera  given in a year
   so I can know and edit Activities set for a given year
Background:
   Given I am on the PEI Online homepage and login
Scenario: View a list of activity edited
   
   When I am in the activity table
   And edited the activity in observations for "a file is missing for the activity"
   And add the compliance date "2020-04-07"
   And I add the manager to "alejandro"
   Then should show me the table:
   | Actividad                                                               | Fecha Inicio  | Fecha Fin     | Evidencia                         | Encargado       | Fecha cumplimiento  | Observaciones                      |        
   | 3. ELABORAR INFORME FINL DE LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS       | 06-04-2020    | 30-04-2020    | INFORME ENVIADO A LAS AUTORIDADES | alejandro       |  07-04-2020         | a file is missing for the activity |
