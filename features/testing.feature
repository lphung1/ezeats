Feature: Make sure that creating a recipe redirects to the home page
  
  As a user
  So that I can make sure a recipe has been entered
  Want to validate that we were redirected to home page
  
Scenario: Validate text entered into create fields
  Given I am on the "Create" page
  And I can see the "Name" field
  And I can see the "Ingredients" field
  When I click the "Submit" button
  Then I should be on the "Home" page
  