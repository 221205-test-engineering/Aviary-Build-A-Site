Feature: Photos

Background: User is logged in to app

Scenario: User takes a photo inside an Entry
    Given the user has pressed the Take Photo icon in the app inside an Entry
    When the user presses the button to take a photo
    And clicks the Save button after the photo is displayed
    Then the photo is saved to memory and the photoReference is stored in the Entry

Scenario: User takes a photo outside an Entry and then attaches it to an Entry
    Given The user has pressed the Take Photo icon in the app but not in an Entry
    When the user takes a photo
    And clicks the Save button
    Then the photo is saved and the user is prompted to associate the picture with an Entry
    And The user clicks the Yes button
    Then The user is shown the log of Entrys to choose which Entry to associate by tapping the Entrys.
    And The user clicks the Finish button		
    Then the Entrys are updated and user is returned to the previous screen

Scenario: The user takes a photo outside an Entry and does not attach it to an Entry
	Given the user has pressed the Take Photo icon in the app but not in an Entry
	When the user takes a photo
	And clicks the Save button
	Then the photo is saved to the app storage and the user is prompted to associate the picture with an Entry
    And The user clicks the No button
    Then The user is returned to the last screen
 

