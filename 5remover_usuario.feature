Feature: Remover usuário
    Como uma pessoa qualquer
    Desejo remover um usuário
    Para visualizar todas as informações

Scenario: Deve ser possível remover um usuário
    * def identificador = "c99c94cb-2cea-4d2d-bf1c-f6f66fdaba05"
    Given url "https://crud-api-academy.herokuapp.com/api/v1"
    And path "users", identificador
    When method delete
    Then status 204