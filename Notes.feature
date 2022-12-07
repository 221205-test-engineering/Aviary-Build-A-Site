Feature: Notes

    Scenario: The user wants to add or update notes to a bird 
	Given The user has clicked on add or edit
	And The user is logged in
	When The user has finished typing and clicked update
	Then The user has added or edited notes to the image. It will be updated in the database storage.
