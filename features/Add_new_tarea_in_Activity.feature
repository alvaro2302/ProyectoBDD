Feature: Add a new Tarea into Actividad
   As a Director
   I want to register a new Tarea to Actividad
   so I can have Actividad with updated tareas

Background:
    Given I am on the PEI Online homepage and login

Scenario: Add a new Tarea into Actividad
   Given Director is already logged in.
   When in "Gestion de Indicadores"
   And selected "Activity" desired
   And clicked in my "Lista de tareas"
   And clicked in my "Registrar nueva Tarea"
   And filled "Names" and "Description"
   And clicked in "Guardar Cambios "
   Then I should see the new "tarea"
   
