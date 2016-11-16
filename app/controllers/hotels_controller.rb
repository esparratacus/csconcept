class HotelsController < ApplicationController
  def index

  end

  def lookup
    results=AmadeusService.new.get_airport_hotel_search params[:location],params[:check_in_date],params[:check_out_date]
    @hotels=results.results
  end
end
