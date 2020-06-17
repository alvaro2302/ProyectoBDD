Feature: configure profile in DTC account
   As a DTC account
   I want configure my profile 
   so I change my profile details
Scenario: configure the profile enter the number of days greater than 30
    Given I am on the PEI Online homepage and login
    When I click on button "Configurar Perfil"
    And fill the fields and progress to "31"
    Then should show me a message "Seleccione un valor que no sea mayor de 30"


