When /^I fill in message editor with dynamic text$/ do
	@message_text = FFaker::Lorem.sentence + ' @Ksenia_Gazina'
  
  within '#compose-form' do
  	find(:xpath, '//*/textarea[contains(@id, "ui-sproutedit")]').set @message_text
  end
end

Then /^I should see message popup editor$/ do
  expect(page).to have_css('#compose-form .compose-actions button', text: 'Send')
end

Then /^I should see left navigation menu$/ do
	expect(page).to have_css('nav#messagesNavigation ul li', text: 'Smart Inbox')
end

Then /^I should see (previous sent|scheduled) message$/ do|type|
	context = type == 'scheduled' ? '.sch_bubble' : '.sent_msg'
	expect(page).to have_css("#{context} .message-text", text: @message_text)
end

When /^I click on reply to my previous message$/ do
	element = find('.sent_msg', text: @message_text)
	element.hover

	within element do
		find('.message-buttons a.reply').click
	end
end

When /^I open a calendar$/ do
	within '#compose-form #compose-action-types' do
		find(:xpath, '//*[@data-qa-button="Send Later"]').click
	end
end

When /^I choose next day to (schedule|view) message$/ do |type|
	@next_date = Date.today + 1
	context = type == 'schedule' ? '#compose-form .schedule-calendar' : '#subview_cont_calendar'

	within context do
		if @next_date.month != Date.today.month
			find('.ui-datepicker-header a', text: 'Next').click
		end

		find('.ui-datepicker-calendar tbody td', exact_text: true, text: @next_date.day.to_s).click
	end
end
