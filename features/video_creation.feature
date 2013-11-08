Feature: Video Entry Creation

  So that I can preserve a digital video
  As an archivist
  I want to add a video to the repository

  @wip

  Scenario: Enter a non-existent video
    Given a video
    When I enter the videoTitle as "Arsenic and Old Lace"
    And I enter videoCreator as "Frank Capra"
    And I enter the videoDescription to be "Hilarious adaptation of Joseph Kesselring's hit play (scripted by the Epstein Brothers) about two seemingly harmless old ladies who poison lonely gentleman callers."
    Then I the videoTitle should be "Arsenic and Old Lace"
    And the videoCreator should be "Frank Capra"
    And the videoDescription should be "Hilarious adaptation of Joseph Kesselring's hit play (scripted by the Epstein Brothers) about two seemingly harmless old ladies who poison lonely gentleman callers."
