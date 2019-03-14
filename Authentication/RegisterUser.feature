Feature: Register a User

  *As an unregistered User,  
  I want to create a new account,  
  in order to use the application.*  
  
  To keep the application simple, we perform direct registration here 
  without any e-mail checks or whatever. 

  Scenario: An unregistered User signs up
  
    This is the happy path of successful registration. 
    We keep it simple here without e-mail confirmation.
  
    Given an unregistered User
    When she registers with a username and a password
    Then she gets a success response
    And her account gets activated
    But she isn't logged in
  
  Scenario: A registered User signs up
  
    We want to ensure that a potential hacker 
    wouldn't get too much information about the 
    application's user accounts.
  
    Given a registered User
    When she registers with her username and password
    Then she gets a success response
    But her account remains unchanged

  
  