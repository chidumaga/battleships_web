Feature: Players can actually play the game
  In order to enjoy the game of battleships
  As a player
  I will like to be able to fire and be fired at, to be able to win/lose

  Scenario: Players can fire at one another
    Given I am on the play page
    When I fill in "position" with "A1"
    Then I should see "You've hit your opponent's ship"