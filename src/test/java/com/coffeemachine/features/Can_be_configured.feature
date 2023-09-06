@sprint-2
Feature: Can be configured
    "**In order to** get the best possible coffees"
    "**As a** geeky coffee lover"
    "**I can** configure it to match my needs"

  @priority-medium
  Scenario: Display settings (uid:8252ff15-f313-4f07-8d1a-2c6e3cd1091b)
    Given the coffee machine is started
    When I switch to settings mode
    Then displayed message is:
      """
      Settings:
       - 1: water hardness
       - 2: grinder
      """

  @priority-high
  Scenario: Default settings (uid:76eef408-bd2f-47c7-a78b-f14a5e7ce07f)
    Given the coffee machine is started
    When I switch to settings mode
    Then settings should be:
      | water hardness | 2      |
      | grinder        | medium |
