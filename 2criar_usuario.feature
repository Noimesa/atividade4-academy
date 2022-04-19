Feature: Criar usuário
    Como uma pessoa qualquer
    Desejo criar um usuário
    Para ter controle das informações registradas

Scenario: Deve ser possível cadastrar um novo usuário
    Given url "https://crud-api-academy.herokuapp.com/api/v1" 
    And path "users"
    And request
    """
    {
        "name": "Anna",
        "email": "annaloba@gmail.com"
    }
    """
    When method post
    Then status 201
    And match response contains {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"}