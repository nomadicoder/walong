Feature: Book Entry Creation

  So that I can preserve a digital book
  As an archivist
  I want to add a book to the repository

  Scenario: Enter a non-existent book
    Given a book
    When I enter the title as "A Tree Grows in Brooklyn"
    And I enter author as "Betty Smith"
    And I enter "Harper Collins" for the publisher
    And I enter the copyright to be "1943"
    And I enter the description to be "The American classic about a young girl's coming-of-age at the turn of the century."
    Then I the title should be "A Tree Grows in Brooklyn"
    And the author should be "Betty Smith"
    And the publisher should be "Harper Collins"
    And the copyright should be "1943"
    And the description should be "The American classic about a young girl's coming-of-age at the turn of the century."
