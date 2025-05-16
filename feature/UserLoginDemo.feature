Feature: User Login

  As a registered user
  I want to be able to log in to the web application
  So that I can access my personalized dashboard

  Background:
    Given the web application is up and running
    And the user navigates to the login page

  Scenario: Successful login with valid credentials
    Given the user has a valid username and password
    When the user enters their username and password
    And clicks the "Login" button
    Then the user should be redirected to the dashboard
    And a welcome message should be displayed

  Scenario: Unsuccessful login with incorrect password
    Given the user has a valid username and an incorrect password
    When the user enters their username and password
    And clicks the "Login" button
    Then an error message should be displayed
    And the user should remain on the login page

  Scenario: Unsuccessful login with unregistered username
    Given the user does not have a registered account
    When the user enters an unregistered username and any password
    And clicks the "Login" button
    Then an error message should be displayed
    And the user should remain on the login page

  Scenario: Login attempt with empty fields
    Given the user does not enter a username and password
    When the user clicks the "Login" button
    Then validation messages should be displayed for each empty field
    And the user should remain on the login page
