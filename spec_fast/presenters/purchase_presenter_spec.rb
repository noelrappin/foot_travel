require 'fast_spec_helper'
require 'delegate'
require_number_modules
require 'presenters/purchase_presenter'

describe PurchasePresenter do
  let(:user) { OpenActiveModel.new(:first_name => "Fred", :last_name => "Flintstone") }
  let(:pe_hotel) { OpenActiveModel.new(:extra => hotel, :extra_type => "Hotel",
      :unit_price => 400, :unit_count => 3, :extended_price => 1200)}
  let(:pe_tour) { OpenActiveModel.new(:extra => extra, :extra_type => "Tour",
      :unit_price => 300, :unit_count => 1, :extended_price => 300)}
  let(:hotel) { OpenActiveModel.new(:name => "Hilton") }
  let(:extra) { OpenActiveModel.new(:name => "Tour") }
  let(:purchase) { OpenActiveModel.new(
      :buyer => user, :purchase_extras => [pe_hotel, pe_tour], :total_price => 1500) }
  let(:presenter) { PurchasePresenter.new(purchase) }

  it "should have a buyer's name" do
    presenter.buyer_name.should == "Fred Flintstone"  
  end

  it "determines the hotel name" do
    presenter.hotel_name.should == "Hilton"
  end

  it "determines the hotel price" do
    presenter.hotel_price.should == "$1,200.00"
  end

  it "displays the hotel price calculation" do
    presenter.hotel_price_display.should == "3 nights at $400.00 = $1,200.00"
  end

  it "finds the extras" do
    presenter.extras_display.should == ["Tour ($300.00)"]
  end

  it "sums the cost" do
    presenter.total_price_display.should == "$1,500.00"
  end
end