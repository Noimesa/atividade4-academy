Feature: Encontrar usuário
    Como uma pessoa qualquer
    Desejo encontrar um usuário
    Para visualizar todas as informações

Scenario: Deve ser possível encontrar um usuário por id
    * def identificador = "95beee14-4dd9-4b33-a044-413e2ae99549"
    Given url "https://crud-api-academy.herokuapp.com/api/v1"
    And path "users", identificador
    When method get
    Then status 200
    And match response contains {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"}