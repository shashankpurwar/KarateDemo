Feature: To validate the basic authrization  for get response
Background: 
Given url _url
Scenario:
Given path '/secure/webapi/all'
And headers {Accept: 'Application/json' , Authorization: 'Basic YWRtaW46d2VsY29tZQ=='}
When method get
Then status 200
And  print _url

