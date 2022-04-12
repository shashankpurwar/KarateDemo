Feature: To validate the data of post request in JSON format 

Background: 
	Given url 'http://localhost:9891' 
	
Scenario: Validate the post request in json format
	Given path '/normal/webapi/add' 
	And request {"jobId": 12,"jobTitle": "stringShashank","jobDescription": "string", "experience": ["string"],"project": [ {"projectName": "string","technology": ["string"]} ]} 
	And headers {Accept : 'application/json', Content-Type : 'application/json'} 
	When method post 
	Then status 201 
	And print response 
	And match response.jobId == 12
	
Scenario: Validate the post request in XML format 
	Given path '/normal/webapi/add' 
	And request <?xml version="1.0"?><Job><experience>string</experience><jobDescription>string</jobDescription><jobId>1</jobId><jobTitle>string</jobTitle><project><projectName>string</projectName><technology>string</technology></project></Job> 
	And headers {Accept : 'application/json', Content-Type : 'application/xml'} 
	When method post 
	Then status 400 
	#And print response 
	
	
  	
Scenario: Validate the post request in json format with embaded expression
	Given path '/normal/webapi/add' 
	* def getjobid = function() {return Math.floor(100*Math.random());}
	* def job = getjobid()
	And request {"jobId":'#(job)',"jobTitle": "stringShashank","jobDescription": "string", "experience": ["string"],"project": [ {"projectName": "string","technology": ["string"]} ]} 
	And headers {Accept : 'application/json', Content-Type : 'application/json'} 
	When method post 
	Then status 201 
	And print response 
	And match response.jobId == '#(job)'
	And print job 
	
	Scenario: Validate the post request in XML format  with embaded expression
	Given path '/normal/webapi/add' 
	* def jobid = function() {return Math.floor(100*Math.random());}
	* def job = jobid()
	And request <?xml version="1.0"?><Job><experience>string</experience><jobDescription>string</jobDescription><jobId>#(job)</jobId><jobTitle>string</jobTitle><project><projectName>string</projectName><technology>string</technology></project></Job> 
	And headers {Accept : 'application/json', Content-Type : 'application/xml'} 
	When method post 
	Then status 400 
	And print response 
	And print job
	