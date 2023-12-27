#Author: nagamani.zzz@gmail.com
Feature: Login
  I want to verify  login with  user credentials.

  @regression @smoke @login
  Scenario: Successfull Verification of Login functionality
    Given user should on the login page
    And user enters email address
    And user enters password
    And user clicks "Login in "button
    Then user should navigate to "My account "

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
