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

end