@javascript
Feature: Login to site

	Scenario: Login with test user credentials 
		Given I am on login page
		When I fill in "Email" with "qatests+homework2@sproutsocial.com"
		And I fill in "Password" with "4YJqpeaBvxe2ZwfWVB&fqBihLbcX"
		And I click on "Log In"
		When I click on site logo
		Then I should see "AUDIENCE DEMOGRAPHICS"
		And I should see "GROUP TRENDS"
		# And I take a screenshot