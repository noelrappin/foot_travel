class HomeController < ApplicationController

  def index
    @trips = ::TripPresenter.present_trips(Trip.all)
  end
end
