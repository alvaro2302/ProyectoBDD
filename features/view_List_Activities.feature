Feature: List tareas from a Docente Tiempo Completo
   As a Docente de Tiempo Completo
   I want to list my Activities
   so I can know what Activities I have

Background:
    Given I am on the PEI Online homepage and login

Scenario: list Docente Tiempo Completo
   Given Docente Tiempo Completo is already logged in.
   When in "Gestion de Indicadores"
   And selected desired "Professional Career"
   And selected a desired "year"
   Then I should see my Activities
