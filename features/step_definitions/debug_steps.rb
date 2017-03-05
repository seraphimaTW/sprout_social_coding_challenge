When /^I take a screenshot$/ do
	screenshot_and_open_image
end	

When /^(?:I )pry$/ do
  binding.pry
end