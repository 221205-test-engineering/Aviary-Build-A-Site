Feature: Photos

Background: User is logged in to app

Scenario: User takes a photo inside an Event
    Given the user has pressed the Take Photo icon in the app inside an Event
    When the user presses the button to take a photo
    And clicks the Save button after the photo is displayed
    Then the photo is saved to memory and the photoReference is stored in the Event

Scenario: User takes a photo outside an Event and then attaches it to an event
    Given The user has pressed the Take Photo icon in the app but not in an event
    When the user takes a photo
    And clicks the Save button
    Then the photo is saved and the user is prompted to associate the picture with an event
    And The user clicks the Yes button
    Then The user is shown the log of events to choose which event to associate by tapping the events.
    And The user clicks the Finish button		
    Then the events are updated and user is returned to the previous screen

Scenario: The user takes a photo outside an event and does not attach it to an event
	Given the user has pressed the Take Photo icon in the app but not in an event
	When the user takes a photo
	And clicks the Save button
	Then the photo is saved to the app storage and the user is prompted to associate the picture with an event
    And The user clicks the No button
    Then The user is returned to the last screen
 

