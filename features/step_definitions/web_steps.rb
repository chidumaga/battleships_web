Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click "([^"]*)"$/) do |link_text|
  click_link(link_text)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text) #is this legal?
end

Given(/^I am on the New Game page$/) do
  visit '/game/new'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |position_field, position_of_ship|
  fill_in(position_field, :with => position_of_ship)
end

When(/^I choose "([^"]*)"$/) do |orientation|
  choose(orientation)
end

When(/^I press "([^"]*)"$/) do |submit_button|
  click_button(submit_button)
end

Given(/^I am on the play page$/) do
  visit '/play'
  save_and_open_page
end

