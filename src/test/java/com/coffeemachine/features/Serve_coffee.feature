@sprint-1
Feature: Serve coffee
    "**In order to** enjoy the rest of the day"
    "**As a** coffee lover"
    "**I can** get coffee from the machine"

  @priority-high
  Scenario: Simple use (uid:345a8bb4-9945-4937-983c-fc8c4b38838d)
    Well, sometimes, you just get a coffee.
    Given the coffee machine is started
    When I take a coffee
    Then coffee should be served
