Feature: Upload activity PDF files

   As a Director account
   I want upload my pdf 
   so see the progress of the activities

Background:
    Given I am on the PEI Online homepage and login
Scenario: Verify uploading a PDF that has no activity and is not from another professional career
    When upload document "indica (1).pdf"
    Then should show a message "No esta permitido ingresar Formulario de otra carrera!!!"

Scenario: verify upload a document correctly
    When upload document "IndicadorUno.pdf"
    Then should show a message "PDF cargado completo con exito!"