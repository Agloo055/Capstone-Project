class LegoController < ApplicationController
  def show
    api_key = '2b4a692a7b7fe3df45cf9cf577447c74'
    base_uri = 'https://rebrickable.com/api/v3/lego'

    #response = HTTParty.get("#{base_uri}/sets/#{params[:id]}/?key=#{api_key}")
    response = RestClient.get("https://rebrickable.com/api/v3/lego/sets/#{params[:id]}/?key=2b4a692a7b7fe3df45cf9cf577447c74", {accept: :json})
    @data = JSON.parse(response.body)
  end
end
