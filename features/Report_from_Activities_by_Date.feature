Feature: Report from activities by date 
   As a Docente de Tiempo Completo
   I want to see my activities
   so I can know my activities

Background:
    Given I am on the PEI Online homepage and login

Scenario: Report from activities by date
   Given Docente Tiempo Completo is already logged in.
   When clicked in "Reportes"
   And next clicked in "Actividades por Fecha" 
   And selected the correct "Initial date" and "End date"
   Then I should see a row of activities.
