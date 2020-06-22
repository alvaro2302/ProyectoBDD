Feature: Add a new Tarea to Actividad
   As a Director
   I want to register a new Tarea to Actividad
   so I can have Actividad with updated tareas

Background:
    Given Loged in as Director at Gestion de Indicadores
    When selected Ingenieria de Sistemas and year desired
    Then I should see my Activities table:
   | Actividad                                                                         | Fecha Inicio  | Fecha Fin     | Evidencia       |
   | 1. REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS        | 27-01-2020    | 24-02-2020    | ACTA DE REUNIÓN |
   | 2. REALIZAR REUNIÓN DE SEGUIMIENTO A LA IMPLEMENTACIÓN DEL PLAN DE MEJORAS        | 02-03-2020    | 03-04-2020    | ACTA DE REUNIÓN | 
    

Scenario: Add a new Tarea to Actividad
   #When                                                                   #show tabla de Actividad
   #And                                                                    #Entrar Actividad, Listar tareas
   #Then I should see the new "tarea"                                      #Registrar nueva tarea
   
