Feature: Random Mail

  Background:
    * url 'https://gorest.co.in'
    * def tokenID = 'ae18ae79708914ecf239011d55f986690eca3453798e694c05402874da0e18e8'
    * def randomString =
    """
        function(s){
			var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
		}
    """
    * def randomEmail = randomString(10)
    * def requestPayload =
	"""
	{
        "name": "tom",
        "gender": "male",
        "status": "active"
    }
	"""
  * set requestPayload.email = randomEmail + '@gmail.com'


  Scenario: Create a user with the given data
    Given path '/public/v1/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 201
    And match $.data.id == '#present'
    And match $.data.name == '#present'
    And match $.data.name == 'tom'
