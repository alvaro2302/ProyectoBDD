Feature: Iniciar_sesion_Director_de_Carrera_Completo
   
   Login to Director de Carrera account
   I want to login 
   so I can do my activities
Scenario: Verify that a Director logs in
    Given I'm in the main page.
    And I clicked in Iniciar Sesion button
    And I entered my login data
    When I click in form's button Iniciar Sesion 
    Then the user account page should load
    And I should find my email is in the upper right corner.