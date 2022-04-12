Feature: To validate the common code
Scenario: scenario description
    
Given url _url
And path _path

	 
	And request {"jobId": '#(_id)',"jobTitle": "stringShashank","jobDescription": "string", "experience": ["string"],"project": [ {"projectName": "string","technology": ["string"]} ]} 
	And headers {Accept : 'application/json', Content-Type : 'application/json'} 
	When method post 
	Then status 201 
