Feature: configure profile in DTC account
   As a DTC account
   I want configure my profile 
   so I change my profile details
Scenario: configure the profile enter the number of days greater than 30
    Given entered with a director account
    When I click on button "Configurar Perfil"
    And entered the field "Anunciar por correo" to "31"
    And entered the field "contraseña" and "confirmar contraseña" to "foobar"
    And Click on the button "Guardar Cambios"
    Then should show me a message "El valor debe ser menor o igual a 30"
