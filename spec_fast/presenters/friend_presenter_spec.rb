require 'fast_spec_helper'
require 'presenters/friend_presenter'
require 'roles/friend'

describe FriendPresenter do
  let(:fred) { OpenActiveModel.new(:first_name => "Fred", :last_name => "Flintstone") }
  let(:barney) { OpenActiveModel.new(:first_name => "Barney", :last_name => "Rubble") }
  let(:wilma) { OpenActiveModel.new(:first_name => "Wilma", :last_name => "Flintstone") }
  let(:presenter) { FriendPresenter.new([fred, barney, wilma], fred) }

  it "presents a set of friends" do
    presenter.population.map(&:full_name).should == ["Wilma Flintstone", "Barney Rubble"]
  end
end