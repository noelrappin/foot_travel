Given /^a trip$/ do
  @trip = Trip.create!(:name => "Mayflower Luxury Cruise")
end

When /^I go to the home page$/ do
  visit root_path
end

Then /^I do not see purchase information$/ do
  page.should_not have_selector("#trip_#{@trip.id} .purchase_info")
end

Given /^I am a logged in user$/ do
  @user = User.create!(:email => 'testing@test.com', 
      :password => 'password', :password_confirmation => "password")
  visit new_user_session_path
  fill_in("user_email", :with => "testing@test.com")
  fill_in("user_password", :with => "password")
  fill_in("user_email", :with => "testing@test.com")
  click_button("Sign in")
end

Given /^a set of trips, some of which I have purchased$/ do
  @mayflower = Trip.create!(:name => "Mayflower Luxury Cruise")
  @shakespeare = Trip.create!(:name => "See Shakespeare's Plays")
  Purchase.create(:buyer => @user, :purchasable => @mayflower)
end

Then /^I see my purchase status on each trip$/ do
  page.should have_selector("#trip_#{@mayflower.id} .purchased")
  page.should_not have_selector("#trip_#{@mayflower.id} .unpurchased")
  page.should_not have_selector("#trip_#{@shakespeare.id} .purchased")
  page.should have_selector("#trip_#{@shakespeare.id} .unpurchased")
end