Feature: Encyclopedia
    
Scenario Outline: 
    Given The user is searching <name> 
	When The user enters information and then clicks the search button.
	Then The database is received from the user input and returns the bird that was searched related to its name or information.

Examples:
| ID | Type of Bird  | name                      | notes |  
| 1 | Blue jay       | cyanocitta cristata bromia | Blue above and white below, with a prominent crest and a bold black necklace.|  
| 2 | Penguin        | Adelie                       |  10 lbs & 2.3 ft...  |      