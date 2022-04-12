Feature: To validate the query paramater in get request
Background:
Given url 'http://localhost:9891'
Scenario: scenario description
* def jobid = function(){return Math.floor((100) * Math.random());}
* def getjobid = jobid()
 And print getjobid
#* def readfile = call read(" ../commonCode.feature ") {_url:'http://localhost:9891' , _path:'/normal/webapi/all' , _id: '#(getjobid)'}
	* def allprop = call read(" ../commonCode.feature ") { _url:'http://localhost:9891',_path:'/normal/webapi/add',_id:'#(getjobid)' }
Given path '/normal/webapi/find'
    And headers {Accept : 'application/json', Content-Type : 'application/json'}
    And param id = getjobid
    And param jobTitle = 'stringShashank'
    When method get
    Then status 200
    And match response.jobId == getjobid 
