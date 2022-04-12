Feature: To read and match the data 
Background: 
	Given url 'http://localhost:9891' 
Scenario: To match the data from read json file 
	Given path '/normal/webapi/all' 
	And header Accept = 'application/json' 
	When method get 
	Then status 200 
	* def actualRes = read("classpath:com/api/automation/validateDate.json") 
	And   match response == actualRes 
	And  print "==================", actualRes 
	
	
	Scenario: To match the data from read xml file 
	Given   path '/normal/webapi/all' 
	And  header Accept = 'application/xml' 
	When   method get 
	Then   status 200 
	* def actualRes = read("classpath:com/api/automation/validateXml.xml") 
	And  match response == actualRes 
	And  print "===============" , actualRes 
