Feature: Starting the game
  In order to play battleships
  As a player
  I should be able to start the game

  Scenario: Creating a new game
    Given I am on the homepage
    When I click "New Game"
    Then I should see "Place Your Ships"

  Scenario: Placing my ships
    Given I am on the New Game page
    When I fill in "p1_position" with "A1"
    And I choose "p1_rb-horiz"
    And I fill in "p1_size" with "1"
    And I press "Player 1 Submit"
    Then I should see "Ships placed: 1/5"

  Scenario: Starting a new game
    Given I am on the New Game page
    When I click "Start the Game!"
    Then I should see "Fire at Ships"