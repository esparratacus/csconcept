class FlightsController < ApplicationController
  def index
    amadeus=AmadeusService.new
    @flights=amadeus.get_flight_from
  end
end
