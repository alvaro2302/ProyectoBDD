Feature: Edit Docente Tiempo Completo

   As a Director account
   I want to edit a Docente Tiempo Completo
   so Docente Tiempo Completo information is updated

Background:
    Given I am on the PEI Online homepage and login

Scenario: Edit Docente Tiempo Completo

    Given I am create user DTC
    When I click on Edit button from a Docente Tiempo Completo
    And I Enter the required fields as shown below
    And password and password confirmation are filled in
    And Save changes 
    Then should the changes in the following table:
    | Nombre           | Email                 | Carrera                     |
    | carlos gutierrez | canedo123@gmail.com   | Ingeniería de Sistemas      |
