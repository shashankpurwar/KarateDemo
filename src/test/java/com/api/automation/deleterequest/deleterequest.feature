Feature: To validate the delete request 

Background: 
	Given url 'http://localhost:9891' 
	
Scenario: To validate the delete request 
	* def random = function() {return Math.floor((100)* Math.random());}
* def jobid = random()
* def readfile = call read("../commoncode.feature") {_url: 'http://localhost:9891' , _path: '/normal/webapi/add' , _id:'#(jobid)'}
	Given path '/normal/webapi/remove/' + jobid 
	And headers {Accept : 'Application/json'}
	When method delete 
	Then status 200
	#check the get method for deleted request
	Given path '/normal/webapi/find'
	And params {id: '#(jobid)' , jobTitle: 'stringShashank'}
	And headers {Accept: 'application/json'}
	When method get
	Then status 404
	