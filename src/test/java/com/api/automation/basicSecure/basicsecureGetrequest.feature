Feature: To validate the basic authrization  for get response
Background: 
Given url 'http://localhost:9891'
Scenario:
Given path '/secure/webapi/all'
And headers {Accept: 'Application/json' , Authorization: 'Basic YWRtaW46d2VsY29tZQ=='}
When method get
Then status 200

