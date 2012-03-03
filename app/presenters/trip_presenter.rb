class TripPresenter < SimpleDelegator
  include ActionView::Helpers::NumberHelper
  attr_accessor :trip

  def self.present_trips(trips)
    trips.map { |trip| TripPresenter.new(trip) }
  end

  def initialize(trip)
    super(trip)  
    @trip = trip
  end

  def date_span
    return "" if trip.missing_dates?
    "#{trip.start_date.to_s(:long)} - #{trip.end_date.to_s(:long)}"
  end

  def price_display
    number_to_currency(trip.price)
  end

end