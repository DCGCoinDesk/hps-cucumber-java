Feature: Grounds
    As a coffee lover
    I have to empty the grounds
    So I don't end up with a total mess around the coffee machine

  Background:
    Given the coffee machine is started
    And I handle everything except the grounds

  @priority-medium
  Scenario: When the grounds are emptied, message is removed (uid:2344a0d0-66f9-4350-8cb7-52624fa8f40e)
    When I take "30" coffees
    And I empty the coffee grounds
    Then message "Ready" should be displayed

  @priority-high
  Scenario: Message "Empty grounds" is displayed after 30 coffees are taken (uid:58ae013d-6baa-46cb-948c-ab2aa9f3e03c)
    When I take "30" coffees
    Then message "Empty grounds" should be displayed
