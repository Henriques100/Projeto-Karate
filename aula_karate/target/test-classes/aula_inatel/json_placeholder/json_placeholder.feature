Feature: Testando resources da API json placeholder

Background: Executa uma vez antes de cada teste.
    * def url_base = 'https://jsonplaceholder.typicode.com'

Scenario: Pegando elementos do array de response e testando o tipo
    Given url url_base
    And path '/post'
    When method get
    Then status 200
    And match $ == '#[]'
    And match $ == '#[100]'
    And match each $ contains {title: '#string', userId: '#number'}

Scenario: Criando um novo elemento usando o método POST
    Given url url_base
    And path '/post'
    And request {title: 'título de teste', body: 'body de teste', userId: 1}
    When method post
    Then status 201
    And match $.id = 101
    And match $.title = '#string'
    And match $.userId = '#number'
