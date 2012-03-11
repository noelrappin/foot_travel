Feature: Friends

  Scenario: Viewing Friends
    Given I am a logged in user
    When I go to the friend page
    Then I see an option to remove my current friends
    And I see an option to add new friends