Feature: Log User in

  *As a registered User,  
  I want to log into the application  
  so that I can use it with my credentials.*  
  
  Background: The User is not logged in
    Given the User is not logged in
  
  Scenario: The registered User provides valid credentials
  	When the User logs in with valid username and password
    Then her session opens for 1 week    
  
  Scenario: The User is not registered
    When a User logs in with invalid username and password
    Then she gets a wrong credentials response
  
  Scenario: The registered User provides invalid password 
  	When a User logs in with valid username and invalid password
    Then she gets a wrong credententials response