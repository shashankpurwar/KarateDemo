Feature: To test the scenario ouline functioanlity 

Background: 
* def testdata = read("testdata.csv")

Scenario Outline: scenario description <method> 
	Given print '<url>' 
	And print '<path>' 
	And print '<status>' 
	
	Examples: 
		| url                   | path                  | method |status|
		| http://localhost:9891 | /normal/webapi/upload | get    |200   |
		| http://localhost:9891 | /normal/webapi/all    | post   |201   |
		
		
Scenario Outline: To validate the test data in json format <jobId>
	Given url 'http://localhost:9891' 
	And path '/normal/webapi/add' 
	And headers {Content-Type : 'application/json', Accept : 'application/json'} 
	And request {"experience": ["string"],"jobDescription": '#(jobDescription)',"jobId": '#(jobId)',"jobTitle": '#(jobTitle)',"project": [{"projectName": "string","technology": ["string"]}]} 
	When method post 
	Then status <status> 
	
	
	
	Examples: 
	| jobId | jobTitle | jobDescription |status|    | 1200  | test_1   | Developer      |201|
	| id    | test_2   | Tester         |400|
	| 3200  | test_3   | Analyst        |201|
	
	
	Scenario Outline: To validate the test data in json format <jobId>
	
	Given url 'http://localhost:9891' 
	And path '/normal/webapi/add' 
	And headers {Content-Type : 'application/json', Accept : 'application/json'} 
	And request {"experience": ["string"],"jobDescription": '#(jobDescription)',"jobId": '#(jobId)',"jobTitle": '#(jobTitle)',"project": [{"projectName": "string","technology": ["string"]}]} 
	When method post 
	Then status <status> 	
	Examples: 
	|testdata|
		
		