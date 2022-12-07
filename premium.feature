Feature: Premium

Background: The user is logged into an account

 Scenario Outline: The user shares an Entry or Photo with a geotag to a community map and is signed in to premium
	Given the user is signed in to premium
    And the user clicks the Share button next to an Entry or photo
	Then the user is prompted to confirm the share
	And the user clicks confirm
	Then the Entry or Photo is uploaded to the map served and plotted by geotags and the user is directed to the map view

Scenario: The user tries to share an Entry or Photo without a geotag to a community map and is signed in to premium
	Given the user is signed in to premium
    And the user clicks the Share button next to an Entry or photo
    Then The user is given a warning that the Entry or Photo cannot be shared without a geotag
    Then The user is returned to the previous screen

Scenario: The user is not signed in to premium and clicks a premium feature
	Given the user is not signed in to premium
	Then the premium buttons are grayed out so they cannot be clicked  
    # The buttons are grayed out so they cannot accidentally be clicked and interfere with user experience

