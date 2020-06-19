Feature: Show Docente Tiempo Completo Activity
   As a Director
   I want see a Docente Tiempo Completo activity in an specified year
   so I can know what activity is carried by Docente Tiempo Completo

Background:
    Given I am on the PEI Online homepage and login

Scenario: list Tareas from Activity
   Given Director is already logged in.
   When clicker in "Control y Seguimiento"
   And selected "DTCs" desired
   And selected the year desired
   Then I should see a row of activities for that Docente Tiempo Completo