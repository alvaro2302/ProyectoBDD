Feature: show activity table

   As a DocenteTiempoCompleto account
   I want show table of activities 
   so verify the changes made by me
Scenario: Updating once the page where the activities are once should not change the compliance date in the activities 
    Given LogedIn with a DTC account
    When I click at the top in "Gestión de Indicadores"
    And select the career of "Ingeniería de sistemas" and the year "2020"
    And click on  "1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA"
    And I click on button update for 1 times
    Then should show "REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS"


Scenario: Updating once the page where the activities are once should not change the compliance date in the activities 3 times
    Given entered with a DTC account
    When I click at the top in "Gestión de Indicadores"
    And select the career of "Ingeniería de sistemas" and the year "2020"
    And click on  "1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA"
    And Hago on button update for 3 times
    Then should show "REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS"    

Scenario: Updating once the page where the activities are once should not change the compliance date in the activities
    Given entered with a DTC account
    When I click at the top in "Gestión de Indicadores"
    And select the career of "Ingeniería de sistemas" and the year "2020"
    And click on  "1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA"
    And Hago on button update for 2 times
    Then should show "REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS"  

Scenario: Verify that managers do not change when updating once  
    Given entered with a DTC account
    When I click at the top in "Gestión de Indicadores"
    And select the career of "Ingeniería de sistemas" and the year "2020"
    And click on  "1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA"
    And Hago on button update for 1 times
    Then should show in camp "Encargados" for  "docente bueno"