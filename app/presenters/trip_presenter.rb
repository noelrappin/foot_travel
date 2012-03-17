class TripPresenter < SimpleDelegator
  include ActionView::Helpers::NumberHelper
  attr_accessor :trip, :buyer

  def self.present_trips(trips, user = nil)
    trips.map { |trip| TripPresenter.new(trip, user) }
  end

  def initialize(trip, user = nil)
    super(trip)  
    @trip = trip
    @buyer = user.extend(Buyer) if user
  end

  def date_span
    return "" if trip.missing_dates?
    "#{trip.start_date.to_s(:long)} - #{trip.end_date.to_s(:long)}"
  end

  def price_display
    number_to_currency(trip.price)
  end

  def purchased?
    return false unless has_buyer?
    buyer.has_purchased?(trip)
  end

  def has_buyer?
    buyer.present? 
  end

  def hotel_options
    trip.hotels.map { |h| ["#{h.name}: #{h.description} (#{number_to_currency(h.price)})", h.id] }
  end

  def present_extras
    trip.extras.map { |h| ["#{h.name}: #{h.description} (#{number_to_currency(h.price)})", h.id] }
  end

end