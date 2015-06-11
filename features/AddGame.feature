Feature: User can manually add game
 
Scenario: Add a game
  Given I am on the RottenPotatoes home page
  When I follow "Add new game"
  Then I should be on the Create New Game page
  When I fill in "Title" with "Men In Black"
  And I select "PG-13" from "Rating"
  And I press "Save Changes"
  Then I should be on the RottenPotatoes home page
  And I should see "Men In Black"
