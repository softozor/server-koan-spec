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
    When he registers with a username and a password
    Then he gets a success response
    And his account gets activated
    But he isn't logged in
  
  Scenario: A registered User signs up
  
    We want to ensure that a potential hacker 
    wouldn't get too much information about the 
    application's user accounts.
  
    Given a registered User
    When he registers with his username and a password
    Then he gets a success response
    But his account remains unchanged

  
  