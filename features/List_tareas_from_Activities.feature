Feature: List tareas from Activities
   As a Director
   I want list the tareas from an activity
   so I can know what tareas my activity has

Background:
    Given I am on the PEI Online homepage and login

Scenario: list Tareas from Activity
   Given Director is already logged in.
   When in "Gestion de Indicadores"
   And selected "Activity" desired
   And clicked in my "Lista de tareas"
   Then I should see the list of tareas
