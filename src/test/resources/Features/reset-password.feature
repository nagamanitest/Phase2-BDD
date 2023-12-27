#Author: nagamani.zzz@gmail.com
Feature: Rest Password
  I want to verify  rest-password functionality for existing user

  @regression @smoke
  Scenario: Successfull Rest Password Verification
    Given user should be on the login page
    And user should navigate to rest password page "rest-password"
    And user enters password
    And user clicks "Rest password "button
    When user ask to rest my password
    Then user should recieve an email with:
      """
      	   Please click this link to rest your password
      """

  #docstring
  
  Scenario Outline: Valid credentials for login
    Given I want to enter valid credentials
    When I check for "email" and "password " fields
    And user enters following details
      | email         | password |
      | abc@gmail.com | abc@123  |
      | xyz@gmail.com | xyz@123  |
      | mnp@gmail.com | mnp@123  |
      | pqr@gmail.com | pqr@123  |
    And user clicks "Login in "button

  Scenario: Unsuccessfull Verification of Login functionality
    Given user should on the login page
    And user enters email address
    And user enters password
    And user clicks "Login in "button
    Then error message dispalyed with wrong credentials
    And user returns back on the login page
