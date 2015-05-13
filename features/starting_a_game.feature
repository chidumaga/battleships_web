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

  Scenario: Player doesn't enter name
    Given I'm on the new game page
    When I enter no "value"
    And I press "Submit"
    Then I see "Please enter your name!"

  Scenario: Player places ships
    Given I'm on the game page
    When I click on "Place your ships"
    And I fill my "position" with "F1"
    And I fill my "orientation" with "vertical"
    And I click on the "Submit" button
    Then my ship is placed on the board

