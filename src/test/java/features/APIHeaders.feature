Feature: Pass request with header
Background:
  * def baseUrl = 'https://gorest.co.in'

  Scenario: API with header
    Given header Content-Type = 'text/xml;charset=ISO-8859-1'
    And header Accept-Encoding = 'gzip,deflate'
    And header Connection = 'Keep-Alive'
    And header Expect = '100-continue'
    And header User-Agent = 'Mozilla/4.0(compatible;IE;GACv7\. 1\. 5192\. 22378)'
    And header Authorization = 'Bearer '+ tokenID
    When url baseUrl + '/public/v1/users'
    And path '2139733'
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with headers_Part2
    * def request_headers = {ContentType: 'text/xml;charset=ISO-8859-1', Connection: 'Keep-Alive', UserAgent: 'Mozilla/4.0(compatible;IE;GACv7. 1. 5192. 22378)'}
    Given headers request_headers
    When url baseUrl+'/public/v1/users'
    And path '2139733'
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with headers_Part2
    * Configure headers = { Content-Type: 'text/xml;charset=ISO-8859-1', Connection: 'Keep-Alive', User-Agent: 'Mozilla/4.0(compatible;IE;GACv7. 1. 5192. 22378)' }
    Given url baseUrl+'/public/v1/users'
    And path '2139733'
    When method GET
    Then status 200
    * print response