Feature: Journal Entry

Background: User is logged in to account

Scenario Outline: Create new Journal Entry
    Given the user clicks the Write a Journal Entry icon
    Then a blank Entry page opens with space for <title>, <birdName>, <notes>, <photoReference> inputs
    When the user inputs information into the fields or leaves them blank
    And the user presses the Finish button
    Then the Entry is created as an object with automatic timestamps and geotags that is added to the Journal Log GUI in order of timestamp

Examples: All produce valid Entrys that are added to the Journal Log
    | title       | bird name   | notes                 |photoReference |
    | Blue Jay    | C. cristata | seen in park          | --blank--     |
    | --blank--   | --blank--   | --blank--             | Photos 1 and 2|
    | Woodpecker  | not sure    | red feathers on head  | Photo 3       |
    | --blank--   | --blank--   | --blank--             | --blank--     |

Scenario: User Edits an existing Entry
    Given the user clicks the Edit Entry icon on an Entry in the Journal
    Then the existing <title>, <birdName>, <notes>, <photoReference> information for that Entry is displayed
    And the user clicks on any of the categories
    And the user edits the information in that category
    And the user clicks Save button
    Then the information is saved in that category
    When the user clicks the Finish button all updated information is saved to the Entry and the user is returned to the Journal

Scenario: User exits app before completing an Edit to and existing Entry
    Given the user has entered the Edit Entry functionality
    And the user's app closes before the Finish button is clicked
    Then no changes will be made to the Entry and the user returns to the homepage when the app opens again

Scenario: User Deletes an Entry
    Given the user clicks the Delete Entry icon on an Entry in the Journal    
    Then the user is prompted with Are you sure you want to delete?
    And the user clicks the Yes button
    Then the Entry is deleted and the user is returned to the previous screen

Scenario: User cancels an Entry deletion
    Given the user clicks the Delete Entry icon on an Entry in the Journal    
    Then the user is prompted with Are you sure you want to delete?
    And the user clicks the NO button
    Then the user is returned to the previous screen



