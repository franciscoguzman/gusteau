Feature: Manage orders

  Scenario: User can go to available table page
    Given I am on the tables page
    Then I should see "Disponible"
    When I follow "Disponible"
    Then I should be on the table page for "001"
    And I should see "Abrir Cuenta"
    And I should not see "Agregar"

  Scenario: User can open order
    Given I am on the table page for "001"
    When I press "Abrir Cuenta"
    Then I should see "+"

  Scenario: User can add items to a new order
    Given I am on the table page for "001"
    When I fill in "Product" with "Refresco"
    And I fill in "Quantity" with "2"
    And I press "+"
    Then I should see "2"
    And I should see "Refresco"
    And I should see "30.00"

#  Scenario: User creates a new order
