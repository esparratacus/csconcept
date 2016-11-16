require 'swagger_client'
class AmadeusService
  def initialize
    @api_instance= SwaggerClient::DefaultApi.new
    @apikey='M48ZF9Wn4x8cX1jidoIzpKvWAUsJAgba'
  end

  def get_flight_from(origin='NYC')
    begin
      flights= @api_instance.flight_inspiration_search(@apikey,origin)
    rescue SwaggerClient::ApiError => e
      puts "Exception when calling DefaultApi->flight_inspiration_search: #{e}"
    end

  end

  def get_extensive_search(origin,destination,departure_range,duration)
    begin
      flights=@api_instance.flight_extensive_search(@apikey,origin,destination,departure_date: departure_range,duration: duration,one_way:false,direct: false)
    rescue SwaggerClient::ApiError => e
      puts "Exception when calling DefaultApi->flight_extensive_search: #{e}"
    end
  end

  def get_airport_hotel_search(location,check_in_date,check_out_date)
    begin
      hotels=@api_instance.hotel_airport_search(@apikey,location,check_in_date,check_out_date)
    rescue SwaggerClient::ApiError => e
      puts "Exception when calling DefaultApi->hotel_airport_search: #{e}"
    end
  end

end