Feature: To test the data of get request

Background:
    Given url 'http://localhost:9891'
    And print ("========print=============")
Scenario: To get all the data in JSON format
    #Given url 'http://localhost:9891/normal/webapi/all'
    Given path '/normal/webapi/all'
    When method get 
    Then status 200
    
    Scenario: To get all the data in JSON format with PATH variable
    #Given url 'http://localhost:9891'
    Given path '/normal/webapi/all'
    When method get 
    Then status 200
    
    
    Scenario: To get all the data in JSON format with PATH variable with Header
    #Given url 'http://localhost:9891'
        Given path '/normal/webapi/all'
        And header Accept = 'application/json'
    When method get 
    Then status 200