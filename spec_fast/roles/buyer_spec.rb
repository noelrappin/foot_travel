require 'roles/buyer'

describe Buyer do
  let(:buyer) { OpenStruct.new(:purchases => []).extend(Buyer) }
  let(:purchased) { OpenStruct.new(:name => "Purchased") }
  let(:unpurchased) { OpenStruct.new(:name => "Unpurchased") }

  before(:each) do
    buyer.purchase(purchased, OpenStruct)    
  end

  it "knows what it has purchased" do
    buyer.should have_purchased(purchased)
    buyer.should_not have_purchased(unpurchased)  
  end
end