require 'foot_travel/roles/buyer'

module Roles

  describe Buyer do

    let(:buyer) { OpenActiveModel.new(:purchases => []).extend(Buyer) }
    let(:purchased) { OpenActiveModel.new(:name => "Purchased", :id => 3) }
    let(:unpurchased) { OpenActiveModel.new(:name => "Unpurchased") }
    let(:extra) { OpenActiveModel.new(:name => "Extra", :id => "2", :price => 200) }

    before(:each) do
      buyer.purchase(purchased, {}, OpenActiveModel)    
    end

    it "knows what it has purchased" do
      buyer.should have_purchased(purchased)
      buyer.should_not have_purchased(unpurchased)  
    end

    it "can amend a purchase" do
      purchase = buyer.purchases[0]
      purchase.purchase_extras = []
      result = buyer.add_to_purchase(purchase, extra, 1, OpenActiveModel)
      purchase.purchase_extras.should == [result]  
      result.unit_count.should == 1
      result.unit_price.should == 200
    end
  end
end