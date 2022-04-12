Feature: To validate the schema 
Background: 
	Given url 'http://localhost:9891' 
Scenario: To validate the schema in json format 
	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	And match response == 
		"""
        [
    {
        "jobId": '#number',
        "jobTitle": '#string',
        "jobDescription": '#string',
        "experience": '#[] #string',
        "project": '#[] #object'
    },
    {
        "jobId": '#number',
        "jobTitle": '#string',
        "jobDescription": '#string',
        "experience": '#[] #string',
        "project": '#[] #object'
    },
    {
        "jobId": '#number',
        "jobTitle": '#string',
        "jobDescription": '#string',
        "experience": '#[] #string',
        "project": '#[] #object'
    },
    {
        "jobId": '#number',
        "jobTitle": '#string',
        "jobDescription": '#string',
        "experience": '#[] #string',
        "project": '#[] #object'
    }
]
        """