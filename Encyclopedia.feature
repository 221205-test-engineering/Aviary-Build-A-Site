Feature: Encyclopedia
    
Scenario Outline: Data was found
    Given The user is searching <name> or <references>
	When The user enters information and then clicks the search button.
	Then The database is received from the user input and returns the bird that was searched related to its name or information.

Examples:
| ID | Type of Bird  | name                      | references |  
| 1 | Blue jay       | cyanocitta cristata bromia | Blue above and white below, with a prominent crest and a bold black necklace.|  
| 2 | Penguin        | Adelie                       |  10 lbs & 2.3 ft...  |      

Scenario Outline: Data not found.
	Given The user is searching for information that isn't related to <bird name> or <references> on the page.
	When The user enters <input> and then clicks the search button.
	Then The results come back with nothing displayed and says “nothing was found in the search” and asks the user to input information again in the search bar.


