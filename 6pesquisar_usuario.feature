Feature: Remover usuário
    Como uma pessoa qualquer
    Desejo pesquisar um usuário
    Para visualizar suas informações

Scenario: Deve ser possível pesquisar um usuário
    * def = "ab07a2ba-9de0-46b3-9085-2ebffc58f14b"
    Given url "https://crud-api-academy.herokuapp.com/api/v1"
    And path "users", identificador
    When method delete
    Then status 204