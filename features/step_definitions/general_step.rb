When(/^I click on "([^"]*)"$/) do |arg|
  click_on(arg)
end

When(/^I click a link "([^"]*)"$/) do |arg|
  click_link(arg, match: :first)
end

When(/^I click a button "([^"]*)"$/) do |arg|
  click_button(arg)
end

When(/^I (?:check|choose) "([^"]*)"/) do |checkbox|
  find('label', text: checkbox).click
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |label_name, value|
  fill_in label_name, with: value
end

Then(/^I should( not)? see "([^"]*)"$/) do |negate, text|
  if negate
    expect(page).to have_no_content(text)
  else
    expect(page).to have_content(text)
  end
end

Then(/^I should( not)? see link "([^"]*)" to "([^"]*)"$/) do |negate, text, url|
  if negate
    expect(page).to have_no_link(text, href: Regexp.new(url))
  else
    expect(page).to have_link(text, href: Regexp.new(url))
  end
end
