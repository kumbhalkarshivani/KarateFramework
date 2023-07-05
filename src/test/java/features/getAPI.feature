Feature: Get API feature

  Scenario: Get user details
#  * var systemPath = java.lang.System.getenv('PATH')
#    * print systemPath
#    * call read('classpath:karate-config.js')
    * def baseUrl = 'https://gorest.co.in'
    Given url baseUrl + '/public/v2/users'
    And path '2139746'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * def actDataName =  jsonResponse.name
    * def actDataEmail =  jsonResponse.email
    * def actDataStatus =  jsonResponse.status
    * print actDataName + " " + actDataStatus
    * match actDataName == 'Ganak Panicker'
    * match actDataEmail == 'Ganak Panicker'
    * match actDataStatus == 'active'

  Scenario: User not found
    Given url baseUrl + '/public/v2/users'
    And path '1'
    When method GET
    Then status 404