Feature: Upload activity PDF files

   As a DTC account
   I want upload my pdf 
   so see the progress of the activities

Scenario: Verify uploading a PDF that has no activity and is not from another professional career
    Given I am on the PEI Online homepage and login
    When upload document "indica (1).pdf"
    Then should show a message "No es ta permitido . Ingresar Formulario de otra carrera!!!"
