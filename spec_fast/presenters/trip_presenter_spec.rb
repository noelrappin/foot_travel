require 'fast_spec_helper'
require_number_modules
require 'presenters/trip_presenter'
require 'services/date_range_service'

class DumbTrip < OpenStruct 
  include DateRangeService
end

describe TripPresenter do
  it "presents trips" do
    TripPresenter.present_trips([DumbTrip, DumbTrip]).map(&:class)
        .should == [TripPresenter, TripPresenter]
  end

  it "presents trips with a user" do
    presenters = TripPresenter.present_trips([stub, stub], 
        OpenStruct.new(:name => "user"))
    presenters.first.buyer.name.should == "user"
  end

  describe "with one presenter" do
    it "prints a date span" do 
      trip = DumbTrip.new(:start_date => Date.parse("January 22, 1971"), 
          :end_date => Date.parse("May 31, 1971"))
      presenter = TripPresenter.new(trip)
      presenter.date_span.should == "January 22, 1971 - May 31, 1971"    
    end

    it "prints a blank date span" do
      trip = DumbTrip.new(:start_date => "", :end_date => "")
      presenter = TripPresenter.new(trip)
      presenter.date_span.should be_blank
    end

    it "displays a price" do
      presenter = TripPresenter.new(DumbTrip.new(:price => 100.5))
      presenter.price_display.should == "$100.50"
    end
  end

  describe "With a presenter and a user" do
    let(:user) { OpenStruct.new(:purchases => []) }
    let(:trip) { DumbTrip.new(:id => 3) }
    let(:presenter) { TripPresenter.new(trip, user) }

    it "can determine the trip state of the purchase" do
      presenter.should have_buyer
      presenter.should_not be_purchased   
      user.purchases << OpenStruct.new(:purchasable => trip)
      presenter.should be_purchased
    end

    it "determines the trip state of the purchase if there is no user" do
      presenter = TripPresenter.new(trip) 
      presenter.should_not have_buyer
      presenter.should_not be_purchased
    end
  end

  describe "With hotel information" do
    let(:trip) { DumbTrip.new(:hotels => [hotel]) }
    let(:presenter) { TripPresenter.new(trip) }
    let(:hotel) { OpenStruct.new(:name => "Hilton", :price => 100, :id => 1)}

    it "should return a select list of hotels" do
      presenter.hotel_options.should == [["Hilton:  ($100.00)", 1]]  
    end
  end

  describe "With extra information" do
    let(:trip) { DumbTrip.new(:extras => [extra]) }
    let(:presenter) { TripPresenter.new(trip) }
    let(:extra) { OpenStruct.new(:name => "Tour", :price => 100, :id => 1)}

    it "should description" do
      presenter.present_extras.should == [["Tour:  ($100.00)", 1]]  
    end
  end
  
end