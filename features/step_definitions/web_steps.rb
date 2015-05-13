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

Given(/^I'm on the game page$/) do
  visit('/')
  click_link("New Game")
  fill_in("value", :with => "rocco")
  click_button("Submit")
end

When(/^I click on "([^"]*)"$/) do |arg1|
  click_link(arg1)

end

When(/^I fill my "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I click on the "([^"]*)" button$/) do |arg1|
  click_button(arg1)

end

Then(/^my ship is placed on the board$/) do
  pending # Write code here that turns the phrase above into concrete actions
end





