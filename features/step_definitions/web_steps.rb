Given (/^I am on the homepage$/) do
  visit('/')
  # save_and_open_page
end

When(/^I click "([^"]*)"$/) do |arg2|
  click_link(arg2)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |value, name|
  fill_in(value, :with => name)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

Given(/^I'm on the new game page$/) do
  visit('/game/new')
end


When(/^I enter no "([^"]*)"$/) do |value|
  fill_in(value, :with => "")
end

Then(/^I see "([^"]*)"$/) do |text1|
  expect(page).to have_content text1

end





