#Author: FrancisErdman@protonmail.com
#
#How to run from windows powershell terminal:
#java -cp "karate.jar;lib\Hello.jar" com.intuit.karate.Main C:\karate-1.2.0.RC6\src\demo\api\userDetails.feature
#

Feature: fetching User Details
Scenario: testing the get call for User Details
 
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200

@smoke
Scenario: call java method
* def HelloObject = Java.type('Hello')
* def str =  new HelloObject().getMyString();
Then print 'str--',str
