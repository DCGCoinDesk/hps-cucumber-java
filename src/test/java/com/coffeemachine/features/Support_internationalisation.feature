@sprint-3
Feature: Support internationalisation
    "**In order to** practice my use of greetings in several languages"
    "**As a** polyglot coffee lover"
    "**I can** select the language on the coffee machine"

  @priority-medium
  Scenario Outline: Messages are based on language (<hiptest-uid>)
    When I start the coffee machine using language "<language>"
    Then message "<ready_message>" should be displayed

    Examples:
      | ready_message | language | hiptest-uid |
      | Ready | en | uid:40994e8c-930c-4d48-acc3-12940fb9a844 |
      | Pret | fr | uid:f0915b6d-b624-4e78-a56c-457b87903fb2 |

  @priority-medium
  Scenario: No messages are displayed when machine is shut down (uid:1c9e1aef-2acf-472c-895b-b7f3e69cde6b)
    Given the coffee machine is started
    When I shutdown the coffee machine
    Then message "" should be displayed
