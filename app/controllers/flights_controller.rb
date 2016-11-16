class FlightsController < ApplicationController
  def index
    amadeus=AmadeusService.new
    @flights=amadeus.get_flight_from
  end

  def lookup
    puts params
    dr="#{params[:start_date]}--#{params[:end_date]}"
    results=AmadeusService.new.get_extensive_search params[:origin],params[:destination],dr,params[:duration]
    @flights=results.results
  end
end
