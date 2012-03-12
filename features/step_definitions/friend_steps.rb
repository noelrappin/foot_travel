When /^I go to the friend page$/ do
  visit users_path
end

Then /^I see an option to remove my current friends$/ do
  page.should have_selector("#user_#{$USERS[:barney].id} .remove")
end

Then /^I see an option to add new friends$/ do
  page.should have_selector("#user_#{$USERS[:wilma].id} .add")
end

When /^I add a friend$/ do
  visit users_path
  click_link("Add Friend")
end

Then /^I see that the friend has been added$/ do
  save_and_open_page
  page.should have_selector("#user_#{$USERS[:wilma].id} .remove")
end

