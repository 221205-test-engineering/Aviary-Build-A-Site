Feature: login

Scenario Outline: User logs in succesfully
    Given the user is on the login page
    When user types in <username> and <password>
    And clicks the login button
    Then the user is redirected to the home page

Examples: valid combinations
    | Username | Password | 
    | User1    | Pass1    |
    | User2    | Pass2    |
    | User3    | Pass3    |

Scenario: User uses an invalid username and password combination
    Given the user is on the login page
    When user types in a username and password that are not valid
    Then the user is given a warning the username and password combination are invalid
