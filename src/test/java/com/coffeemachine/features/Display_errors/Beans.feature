Feature: Beans
    As a coffee lover
    I have to put fresh beans from time to time
    So I can have coffee when I need it

  Background:
    Given the coffee machine is started
    And I handle everything except the beans

  @priority-high
  Scenario: After adding beans, the message "Fill beans" disappears (uid:b44cedc5-4f05-4ed6-9b4e-51916a722858)
    When I take "40" coffees
    And I fill the beans tank
    Then message "Ready" should be displayed

  @priority-low
  Scenario: It is possible to take 40 coffees before there is really no more beans (uid:4d21a81b-cc28-4ecb-bf89-a3f2386de3d3)
    When I take "40" coffees
    Then coffee should be served
    When I take a coffee
    Then coffee should not be served
    And message "Fill beans" should be displayed

  @priority-high
  Scenario: Message "Fill beans" is displayed after 38 coffees are taken (uid:a32278e5-92f4-4e95-abcf-a8863c9ce8de)
    When I take "38" coffees
    Then message "Fill beans" should be displayed
