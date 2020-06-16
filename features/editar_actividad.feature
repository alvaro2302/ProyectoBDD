Feature: Edit Activity

    As a user(DTO)
    I want edit the date of an activity
    For change the activity date

    Scenario Outline: edit the date of an activity to the start date
        Given entered with a director account
        When upload document "IndicadorUno.pdf"
        And change the date <dateActivity> in the first activity
        And click on  "Gestion de indicadores"
        And select career to  "carrera de ingenieria de Sistemas"
        And select year to "2020"
        And click on  "1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA"
        And click on  "editar" in the first activity
        And add date  "27-01-2020"
        And click on  "Cuardar cambios"
        
        Then should show the date "27-01-2020" in the first activity

    Examples:
    |  dateActivity        | 
    |  27-01-2020          |
    |  24-02-2020          |
    |  02-03-2020          |
    |  03-04-2020          |
    
    
    Scenario: Verify that when editing compliance date is left empty, the date changes
        Given entered with a director account
        When I click on button  "Cargar PDF" at the top
        And click on button  "cargar nuevo PDF"
        And click on button "seleccionar Archivo"
        And select the PDF "IndicadorUno.pdf"
        And click on  "Cargar PDF"
        And click on  "Gestion de indicadores"
        And select career to  "carrera de ingenieria de Sistemas"
        And select year to "2020"
        And click on  "1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA"
        And click on  "editar" in the first activity
        And add date  " "
        And click on  "Cuardar cambios"
        
        Then should show the date "03-04-2020" in the first activity
    


    Scenario Outline: verificar que al editar la actividad ingrese el progreso a 0
        Given entered with a director account
        When I click on the button "Gestion de Indicadores"
        And select career to  "carrera de ingenieria de Sistemas"
        And select year to "2020"
        And click on  "1. PORCENTAJE DE PROGRAMAS ACREDITADOS. PORCENTAJE DE CUMPLIMIENTO EN LOS PLANES DE MEJORAMIENTO SEGÚN RECOMENDACIONES DE EVALUACIÓN EXTERNA"
        And click on  "editar" in the first activity
        And enter the value <progressNumber> in the "progress" field
        And click on "Guardar cambios"
        Then should show activity table
    Examples:
    | progressNumber      | 
    |  0                  |
    |  99                 |
    |  100                |
    |  101                |
    |  1                  |
    |  2                  |
    |  -1                 |
    