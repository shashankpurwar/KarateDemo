Feature: To validate patch request 
Background: 
	Given url 'http://localhost:9891' 
Scenario: 

	* def random = function(){return Math.floor((100)* Math.random());}
* def jobid = random()
* def readfile = call read("../commonCode.feature"){_url: 'http://localhost:9891' , _path: '/normal/webapi/add' , _id: '#(jobid)'}
* def jobdes = 'This is sample patch request' 
    Given  path '/normal/webapi/update/details'
	And params {id:'#(jobid)',jobTitle:'test',jobDescription:'#(jobdes)' } 
	And  header Accept = 'Application/json'
	#And  request {} 
	When method patch 
	Then  status 200 
	And  response.jobDescription == jobdes 
