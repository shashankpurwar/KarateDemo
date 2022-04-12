Feature: To test the jasonpath 

Scenario: 

Given url 'http://localhost:9891/normal/webapi/all'
When method get
Then status 200
And def prop1 = karate.jsonPath(response, "$[?(@.jobId==1)].jobTitle")
And def prop2 = karate.jsonPath(response, "$[?(@.jobId==12)].jobTitle")
And print prop1, prop2