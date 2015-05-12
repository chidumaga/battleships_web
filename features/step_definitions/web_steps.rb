Given (/^I am on the homepage$/) do
  visit('/')
  # save_and_open_page
end

When(/^I click "([^"]*)"$/) do |arg2|
  click_link(arg2)
end

Then(/^I should see "([^"]*)"$/) do |ask_name|
  ask_name
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |value, name|
  fill_in(value, :with => name)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

