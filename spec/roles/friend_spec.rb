require 'fast_spec_helper'
require 'foot_travel/roles/buyer'

module Roles

  describe Friend do
    let(:me) { OpenStruct.new(:first_name => "Fred", :last_name => "Flintstone") }
    let(:friend) { OpenStruct.new(:first_name => "Barney")  }
    let(:enemy) { OpenStruct.new(:first_name => "Spacely") }

    before(:each) do
      me.extend(Friend)
      friend.extend(Friend)
      enemy.extend(Friend)
    end

    it "has a full name" do
      me.full_name.should == "Fred Flintstone"
      me.sort_name.should == ["Flintstone", "Fred"]    
    end

    it "can create a friend" do
      result = me.befriend(friend) 
      result.sender.should == me
      result.receiver.should == friend
    end

    it "recognizes sends as friends" do
      me.friends = [Relationship.new(:sender => me, :receiver => friend)]
      me.friends_received = []
      me.all_friends.should == [friend]
      me.should be_friends_with(friend)
      me.status_with(friend).should == "Friends"
      me.should_not be_friends_with(enemy)
      me.status_with(enemy).should == "No"
    end

    it "recognizes receives as friends" do
      me.friends = []
      me.friends_received = [Relationship.new(:sender => friend, :receiver => me)]
      me.all_friends.should == [friend]
      me.should be_friends_with(friend)
      me.should_not be_friends_with(enemy)
    end
  end
end