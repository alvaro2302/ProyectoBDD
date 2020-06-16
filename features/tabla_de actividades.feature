Feature: show activity table

   As a Director account
   I want show table of activities 
   so keep track of the teacher activities
Scenario Outline: Updating once the page where the activities are once should not change the compliance date in the activities 
    Given entered with a Director account
    When I click at the top in "Gestión de Indicadores"
    And select the career of "Ingeniería de sistemas" and the year "2020"
    And click on  "1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA"
    And I click on button update for <numberRefresh> times
    Then should show "REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS"

Examples:
    | numberRefresh       | 
    |  1                  |
    |  2                  |
    |  3                  |


