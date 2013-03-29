Feature: Cuking

  Scenario: Trigger change event indirectly
    When I select "Blah"
    Then something should happen

  Scenario: Trigger change event directly
    When I spoof the change
    Then something should happen

