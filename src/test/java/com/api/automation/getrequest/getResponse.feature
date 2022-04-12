Feature: To test the response functionality

Background:
    Given url 'http://localhost:9891'
    
    
    Scenario: get the response in JSON format
        Given path '/normal/webapi/all'
        And header Accept = 'application/json'
        When method get
        Then status 200
        And print response
        
        
    Scenario: get the response in JSON format
        Given path '/normal/webapi/all'
        And header Accept = 'application/xml'
        When method get
        Then status 200
        And print response
        
     Scenario: to match  the response in JSON format
        Given path '/normal/webapi/all'
        And header Accept = 'application/json'
        When method get
        Then status 200
        #And match response contains deep {"jobDescription": "To develop andriod application"}
        And match response contains deep {"project" :[{"projectName": "Movie App"}]}
	
	Scenario: get the response in JSON format and match the response header
        Given path '/normal/webapi/all'
        And header Accept = 'application/xml'
        When method get
        Then status 200
        And print response
        #And match header Transfer-Encoding == 'chunked'
        And match header Connection == 'keep-alive'