require 'fast_spec_helper'
require 'delegate'
require 'active_support/core_ext/date/conversions'
require 'active_support/core_ext/hash/keys'
require 'active_support/core_ext/hash/reverse_merge'
require 'active_support/i18n'
require 'action_view/helpers/number_helper'
require 'presenters/trip_presenter'
require 'services/date_range_service'

class DumbTrip < OpenStruct 
  include DateRangeService
end

describe TripPresenter do
  it "presents trips" do
    TripPresenter.present_trips([stub, stub]).map(&:class)
        .should == [TripPresenter, TripPresenter]
  end

  describe "with one presenter" do
    let(:presenter) { TripPresenter.new(DumbTrip.new) }

    it "prints a date span" do
      presenter.trip.start_date = Date.parse("January 22, 1971")
      presenter.trip.end_date = Date.parse("May 31, 1971")
      presenter.date_span.should == "January 22, 1971 - May 31, 1971"    
    end

    it "prints a blank date span" do
      trip = DumbTrip.new(:start_date => "", :end_date => "")
      presenter = TripPresenter.new(trip)
      presenter.date_span.should be_blank
    end

    it "displays a price" do
      presenter.trip.price = 100.5
      presenter.price_display.should == "$100.50"
    end
  end

  
end