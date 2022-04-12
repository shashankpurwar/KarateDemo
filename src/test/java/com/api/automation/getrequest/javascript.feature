Feature: To add the java script in karate framework
Scenario: scenario description
    * def multvalue = function(p1,p2){return p1*p2;}
     * print multvalue(2,3)
    * def multvalue = function() { return 10; }
    * print  multvalue()
      * def greet = function(name) { return "hello " + name; }
    * print greet("Shashank")
    
   * def randomnum = function() {return 100*Math.random();}
    * print  randomnum()
    * def now = function(){ return java.lang.System.currentTimeMillis();}
    Then print now()
    * def randomnumber = function() {return Math.floor(100*Math.random());}
    * print  "======-----" ,randomnumber()