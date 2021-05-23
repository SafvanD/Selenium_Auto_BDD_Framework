Feature: Verifying Registration Functionality

    @sanity
    Scenario: Registration with valid data
    Given User is on Registration page
    When User enters username
    And User enters email
    And User enters password
    And User clicks on Signup button
    Then User should be registered successfully

    @sanity @smoke
    Scenario: Registration with duplicate username
    Given User is on Registration page
    When User enters duplicate username
    And User enters email
    And User enters password
    And User clicks on Signup button
    Then User should be registered successfully

    @Sanity testing , @regression testing
	Scenario Outline: Verify login and logout functionality with multiple user data
			When User enter username "Username"
			And User enter password "Password"
			And User click on signin button
			Then User should be logged in
			When User click on SignOut button
			Then User should be logged out

	Examples:
			|Username|Password|
			|User1   |Pass1	  |
			|User2   |Pass2	  |
			|User3   |Pass3	  |
