Feature: To validate the common code functionality 
Background:
    Given url 'http://localhost:9891'
    
     
    Scenario: Validate the common code functionality 
	
	#* call read(" ../commonCode.feature ")
	*  def getid = function() { return Math.floor((100)* Math.random());}
    * def id = getid() 
	* def allprop = call read(" ../commonCode.feature "){ _url:'http://localhost:9891' , _path:'/normal/webapi/add' , _id:'#(id)' }
	And print allprop.id
	# To validate the put request
	Given path '/normal/webapi/update' 
	And request 
	"""
	{
  "jobId": '#(id)',
  "jobTitle": "stringShashank998",
  "jobDescription": "string",
  "experience": [
    "string"
  ],
  "project": [
    {
      "projectName": "string",
      "technology": [
        "string"
      ]
    },
{
      "projectName": "string",
      "technology": [
        "string"
      ]
    }
  ]
}
	"""
	And headers {Accept : 'application/json', Content-Type : 'application/json'}
	When method put
	Then status 200
	And print response
		* def arrayvalue = karate.jsonPath(response , "$[?(@.jobId ==" + id + " )].project")
		And match arrayvalue[0] == '#[2]'
	