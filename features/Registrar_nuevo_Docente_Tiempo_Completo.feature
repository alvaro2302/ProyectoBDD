Feature: Register a new Docente de Tiempo Completo
   As a Director
   I want to register a new Docente Tiempo Completo
   so I can add Docentes Tiempo Completo to the system.
Scenario: Add a new Docente Tiempo Completo
    Given I am on the PEI Online homepage and login
    And clicked in "Registrar Nuevo DTC" button
    When Nombre y Apellido are filled in
    And e-mail is filled in 
    And "Ingenieria Civil" is selected
    And password and password confirmation are filled in
    And "Crear cuenta" button is clicked
    Then I should see a row with new Director Tiempo Completo's data in it.