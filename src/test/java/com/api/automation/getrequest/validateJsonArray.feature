Feature: To test the data of get request 

Background: 
	Given url 'http://localhost:9891' 
	And print ("========print=============") 
Scenario: To get all the data in JSON format 
#Given url 'http://localhost:9891/normal/webapi/all'
	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	
Scenario: To validate array in JSON data format 
#Given url 'http://localhost:9891'
	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	And match response.[0].jobId == 1 
	And match response.[0].experience[0] == 'Google' 
	And match response.[0].project[0].technology[0] == 'Kotlin' 
	#use wild Card
	And match response.[0].experience[*] == ['Google','Apple','Mobile Iron'] 
	#use contain keyword
	And match response.[0].experience[*] contains ['Google'] 
	
	
Scenario: To validate array in xml data format 
#Given url 'http://localhost:9891'
	And header Accept = "application/xml" 
	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	And print response 
	And match response/List/item/jobId == '1' 
	And match response/List/item/experience/experience[1] == 'Google' 
	And match response/List/item/project/project/technology/technology[3] == 'Gradle' 
	#And match response/List/item/project/project/technology/technology[*] contains ['Gradle'] 
	#Traveres the xml to json
	And match response.List.item.project.project.technology.technology[2] == 'Gradle' 
	
	
	Scenario: To validate array in JSON data format for fuzzy matcher
#Given url 'http://localhost:9891'
	Given path '/normal/webapi/all' 
	When method get 
	Then status 200 
	And match response.[0].jobId == 1 
	And match response.[0].jobId == '#notnull? _==1'
	And match response.[0].jobTitle == '#string?_.length==13'
	
	And match response.[0].jobId == '#number'
	And match response.[0].experience[0] == '#notnull' 
	And match response.[0].project[0].technology =='#[3]?_.length>=3'
	And match response.[0].project[0].technology[0] == '#present' 
	And match response.[0].project[0].technology == '#[3] #string? _.length>=5'
	#use wild Card
	And match response.[0].experience[*] == ['Google','Apple','Mobile Iron'] 
	And match response.[0].experience[*] == '#array'
	#use contain keyword
	And match response.[0].experience[*] contains '#string'
	
	
	
	
    