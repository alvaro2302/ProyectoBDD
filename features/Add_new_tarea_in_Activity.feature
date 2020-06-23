Feature: Add a new Tarea into Actividad
   As a Director
   I want to register a new Tarea to Actividad
   so I can have Actividad with updated tareas

Background:
    Given I am on the PEI Online homepage and login

Scenario: Add a new Tarea into Actividad
   Given I am on the activity table
   When I add the task "review documents" with description "give the final touches"
   And I add the task "print jobs" with description "present the final results"
   Then I should see the  table:
   | Nombre              | Descripción                |
   | print jobs          | present the final results  |
   | review documents    | give the final touches     |

   
