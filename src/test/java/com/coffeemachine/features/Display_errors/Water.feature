Feature: Water
    As a coffee lover
    I have to handle the water tank
    So I can have coffee when I need it

  Background:
    Given the coffee machine is started
    And I handle everything except the water tank

  @priority-high
  Scenario: When the water tank is filled, the message disappears (uid:077d4765-2f89-40e5-9ba4-ebf252515909)
    When I take "55" coffees
    And I fill the water tank
    Then message "Ready" should be displayed

  @priority-low
  Scenario: It is possible to take 10 coffees after the message "Fill water tank" is displayed (uid:4d438f2a-5aab-472c-a01b-c5361a265254)
    When I take "60" coffees
    Then coffee should be served
    When I take a coffee
    Then coffee should not be served

  @priority-high
  Scenario: Message "Fill water tank" is displayed after 50 coffees are taken (uid:615bfb5b-9402-42f7-a6e5-f8278b073ed1)
    When I take "50" coffees
    Then message "Fill tank" should be displayed
