Given /^I am on the home page$/ do
  visit('/ncr')
end

Given /^I have entered "([^"]*)" into the "([^"]*)" field$/ do |text, field|
  fill_in field, :with => text
end

When /^I click the "([^"]*)" button$/ do |button_text|
  click_button button_text
end

When /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
  stamp = Time.now.strftime("%Y%m%d%H%M%S");
  save_screenshot("/Users/daniel/Code/Sologlobe/standalone-cucumber/screen-#{stamp}.png")
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end


