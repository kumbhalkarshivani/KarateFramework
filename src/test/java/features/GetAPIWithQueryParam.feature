Feature: Get API with query param

  Scenario: get all active users
    * def baseUrl = 'https://gorest.co.in'
    * def query = {status: 'active',gender:  'male',id: 2139733}
    Given url baseUrl + '/public/v1/users'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: get all active users and its count
    * def baseUrl = 'https://gorest.co.in'
    * def query = {status: 'active'}
    Given url baseUrl + '/public/v1/users'
    And params query
    When method GET
    Then status 200
    * def jsonResponse = response
    * print jsonResponse
    * def activeUserCount = jsonResponse.data.length
    * print "Count of active users : " + activeUserCount
    * match activeUserCount == 10