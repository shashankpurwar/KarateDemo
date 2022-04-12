Feature: To validate the file upload functionality

Background:
    Given url 'http://localhost:9891'
    
    
    Scenario: scenario description
        Given path '/normal/webapi/upload'
        
        * def fileupload = read("fileupload.txt")
        And def multipart file file = { read: '#(fileupload)', filename:'fileupload.txt', Content-type:'multipart/form-data'}
        When method post
        Then status 200
        And print response