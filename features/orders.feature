Feature: Manage orders
  Scenario: User opens an order
    Given I am on the tables page
    Then I should see "Disponible"
    When I follow "Disponible"
    Then I should be on the table page for "001"
    And I should see "Abrir Cuenta"
