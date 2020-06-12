Feature: Upload activity PDF files

   As a DTC account
   I want upload my pdf 
   so I add activities
Scenario: Verify uploading a PDF that has no activity and is not from another professional career
    Given entered with a director account
    When I click on button  "Cargar PDF" at the top
    And click on button  "cargar nuevo PDF"
    And click on button "seleccionar Archivo"
    And select the PDF "indica (1).pdf"
    Then should show a message "No es ta permitido . Ingresar Formulario de otra carrera!!!"
