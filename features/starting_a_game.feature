Feature: Starting the game
In order to play battleships
As a nostalgic player
I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I click "New Game"
    Then I should see "What's your name?"
    When I fill in "value" with "my name"
    When I press "Submit"
    Then I should see "Thanks for submitting!"

  Scenario: player doesn't enter name
    Given I'm on the new game page
    When I enter no "value"
    And I press "Submit"
    Then I see "Please enter your name!"