Feature: Purchasing a trip
  
  Scenario: A non logged in user does not see buy information on the home screen
    Given a trip
    When I go to the home page
    Then I do not see purchase information

  Scenario: A logged in user sees purchase history on main page
    Given a set of trips, some of which I have purchased
    And I am a logged in user 
    When I go to the home page
    Then I see my purchase status on each trip