Feature: Edit Docente Tiempo Completo

   As a Director account
   I want to edit a Docente Tiempo Completo
   so Docente Tiempo Completo information is updated

Background:
    Given I am on the PEI Online homepage and login

Scenario: Edit Docente Tiempo Completo
    And I click "Editar Usuario" button from a Docente Tiempo Completo
    And I Enter the required fields as shown below
    |name:  |Manuel Perez|
    |email: |nuevodirector@mail.com|
    |career:  |Manuel Perez|
    And password and password confirmation are filled in
    And "Guardar Cambios" button is clicked
    Then I should see a I should see a row with Director Tiempo Completo's data updated in it.