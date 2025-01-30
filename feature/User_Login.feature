Feature: User Login

  Scenario: Successful login with valid credentials
    Given the user navigates to the login page
    When the user enters a valid username and password
    And the user clicks the "Login" button
    Then the user should be redirected to the dashboard
    And the user should see a welcome message "Welcome, [username]"

  Scenario: Unsuccessful login with invalid credentials
    Given the user navigates to the login page
    When the user enters an invalid username or password
    And the user clicks the "Login" button
    Then the user should see an error message "Invalid username or password"
    And the user should remain on the login page

  Scenario: Login attempt with empty credentials
    Given the user navigates to the login page
    When the user leaves the username and password fields empty
    And the user clicks the "Login" button
    Then the user should see an error message "Username and password are required"
    And the user should remain on the login page

  Scenario: Redirect to login page after session timeout
    Given the user is logged in
    And the user's session times out
    When the user tries to access a protected page
    Then the user should be redirected to the login page
    And the user should see a message "Session expired. Please log in again."