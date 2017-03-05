Given /^I am on login page$/ do
  visit 'https://app.sproutsocial.com/login'
end

When /^I click on site logo$/ do
	find('#top_logo a', text: 'Sprout Social').click
end
