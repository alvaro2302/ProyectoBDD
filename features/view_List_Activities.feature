Feature: List tareas from a Docente Tiempo Completo
   As a Director
   I want to list my Activities
   so I can know what Activities I have

Background:
    Given I am on the PEI Online homepage and login

Scenario: list activities from docente tiempo completo
   When in "Gestion de Indicadores"
   And selected desired "Ingeniería de Sistemas"
   And selected a desired "2020"
   Then I should see my Activities table:
   | Actividad                                                                         | Fecha Inicio  | Fecha Fin     | Evidencia       |
   | 1. REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS        | 27-01-2020    | 24-02-2020    | ACTA DE REUNIÓN |
   | 2. REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS        | 02-03-2020    | 03-04-2020    | ACTA DE REUNIÓN |
