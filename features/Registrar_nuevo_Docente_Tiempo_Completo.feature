Feature: Register a new Docente de Tiempo Completo
   As a Director
   I want to register a new Docente Tiempo Completo
   so I can add Docentes Tiempo Completo to the system.

Background:
    Given I am on the PEI Online homepage and login
    
Scenario: Add a new Docente Tiempo Completo
    And I click on 'DTCs' and go to 'Registrar Nuevo DTC'
    When I enter the required fields
   # And send my registration form
    Then I should see a row with new Director Tiempo Completo's data like the table:
    | Nombre                    | Email                         | Carrera                   |
    | Maria Bermudez            | maria@mail.com                | Ingeniería de Sistemas    |

