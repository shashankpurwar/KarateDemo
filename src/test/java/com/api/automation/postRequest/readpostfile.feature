Feature: To read the data from external file 

Background: 
	Given url 'http://localhost:9891' 
	
Scenario: To read the data from externa file in JSON format 
	Given path '/normal/webapi/add' 
	* def actres  = read ( "readPostjson.json" )
	And request actres
	And headers {Accept :'application/json', Content-Type : 'application/json'} 
	 	When method post 
	Then status 201