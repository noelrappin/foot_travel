require 'fast_spec_helper'
require 'foot_travel/contexts/purchase_trip_context'

module Contexts

  describe PurchaseTripContext do
    let(:current_user) { OpenStruct.new(:id => 3, :purchases => []) }
    let(:params) { {:length_of_stay => 4, :lodging => 5, :extras => [1, 4],
        :purchasable_id => 3} }

    it "creates a new purchase given the parameters" do
      new_purchase = PurchaseTripContext.new(params, current_user, Purchase).call
      new_purchase.buyer.should == current_user
      new_purchase.purchasable.id.should == 3 
      new_purchase.length_of_stay.should == 4
      new_purchase.should have(3).purchase_extras
      new_purchase.purchase_extras.map { |pe| pe.extra.class }
          .should == [Extra, Extra, Hotel]
      new_purchase.buyer.purchases.should == [new_purchase]
    end

  end
end