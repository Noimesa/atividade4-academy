Feature: Atualizar usuário
    Como uma pessoa qualquer
    Desejo atualizar um usuário
    Para visualizar todas as informações

Scenario: Deve ser possível atualizar um usuário
    * def identificador = "95beee14-4dd9-4b33-a044-413e2ae99549"
    Given url "https://crud-api-academy.herokuapp.com/api/v1"
    And path "users", identificador
    And request
    """
    {
        "name": "AnnaReis",
        "email": "annareis@gmail.com"
    }
    """
    When method put
    Then status 200
    And match response contains {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"}