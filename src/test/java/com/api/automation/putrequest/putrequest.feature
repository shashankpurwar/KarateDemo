Feature: To validat the put request in json format
Background:
    Given url 'http://localhost:9891'
     
    Scenario: Validate the post request in json format
	Given path '/normal/webapi/add' 
	 *  def getid = function() { return Math.floor((100)* Math.random());}
     * def id = getid()
	And request {"jobId": '#(id)',"jobTitle": "stringShashank","jobDescription": "string", "experience": ["string"],"project": [ {"projectName": "string","technology": ["string"]} ]} 
	And headers {Accept : 'application/json', Content-Type : 'application/json'} 
	When method post 
	Then status 201 
	And print response
	
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
	