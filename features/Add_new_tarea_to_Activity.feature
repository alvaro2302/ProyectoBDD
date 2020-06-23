Feature: Add a new Tarea to Actividad
   As a Director
   I want to register a new Tarea to Actividad
   so I can have Actividad with updated tareas

Background:
    Given Loged in as Director at Gestion de Indicadores
    When selected Ingenieria de Sistemas and year desired
    Then I should see my Activities table as below:
   | Actividad                                                                         | Fecha Inicio  | Fecha Fin     | Evidencia       |
   | 1. REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS        | 27-01-2020    | 24-02-2020    | ACTA DE REUNIÓN |
   | 2. REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS        | 02-03-2020    | 03-04-2020    | ACTA DE REUNIÓN | 
    

Scenario: Add a new Tarea to Actividad
   Given I select an Activity and press its Lista de Tareas
   When I add Nombre and Descripcion to the new tarea and send the information
   #Then I should see the new "tarea"                                      #Registrar nueva tarea
   
