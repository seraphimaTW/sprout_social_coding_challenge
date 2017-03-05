@javascript
Feature: Compose a message (happy path)
  Background:
  	Given I'm logged in to the site

	Scenario: Compose and send a message  
		When I click on "Compose"
		Then I should see message popup editor
		When I fill in message editor with dynamic text
		And I click on "Send"
		Then I should see "Message has been sent!"

		When I click on "messages"
		Then I should see left navigation menu
		And I should see previous sent message

		When I click on reply to my previous message
		When I fill in message editor with dynamic text
		And I click on "Send"
		Then I should see "Message has been sent!"

	Scenario: Schedule a message
		When I click on "Compose"
		Then I should see message popup editor
		When I fill in message editor with dynamic text
		And I open a calendar
		And I choose next day to schedule message
		And I click on "Schedule"
		Then I should see "Message has been scheduled!"

		When I click on "publishing"
		And I choose next day to view message
		And I should see scheduled message
		# Then I take a screenshot

