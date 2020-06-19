Feature:View a list of activities set for a year
   
   As a Director
   I want to view my indicadores de carrera given in a year
   so I can now what Activities are set for a given year
Scenario: View a list of activites
    Given Director is already logged in.
    And selected "Ingenieria Civil"
    And "2020" is the year selected
    When these fields are set 
    Then Director should see a raw of the activities for the year.