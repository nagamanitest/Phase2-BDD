Feature: Registration

  Background: 
    Given user on the homepage
    And user follows "Register" button
    @regression
  Scenario: Create a new user
    Given user should be on the registration page
    When user fills registration "email" with "xxxx2@gmail.com"
    And user fills registration "password" with "xxxxx"
    And user fills registration "conf-password"with "xxxxx"
    And user clicks "Register" button
    Then user is created successfully
     
    Scenario: User does not follow form validations
    Given user should be on the registration page
    When user enters invalid credentials 
    Then error message displayed with invalid credentials
    
