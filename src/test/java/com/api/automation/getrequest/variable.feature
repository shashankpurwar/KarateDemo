Feature: To test Varibale functioanlity 

Background:
* def bc_int = 10
* def bc_string = 'I am background'
    

 	Scenario: scenario description 1
    * def var_int = 10
    * def var_string = 'shashank'
    * def var_int2 = var_int + 20
    * def var_int3 = bc_int + 50
    Then print var_int,var_string,var_int2, bc_int,bc_string,var_int3
    
    Scenario: scenario description
    * def var_int = 20
    * def var_string = 'purwar'
    * def var_int2 = var_int + 20
    Then print var_int,var_string,var_int2,bc_int,bc_string
    