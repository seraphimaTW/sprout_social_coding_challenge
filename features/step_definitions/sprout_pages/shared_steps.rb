Given /^I'm logged in to the site$/ do
  step "I am on login page"
  fill_in "Email", with: "qatests+homework2@sproutsocial.com"
  fill_in "Password", with: "4YJqpeaBvxe2ZwfWVB&fqBihLbcX"
  click_on "Log In"
  step "I click on site logo"
end