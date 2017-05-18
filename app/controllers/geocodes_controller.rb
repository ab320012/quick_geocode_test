class GeocodesController < ApplicationController
  def show
    @geocodes = Geocode.all
  end
  def create
   ret = GoogleMapsService::Client.new.geocode(params[:address])
    @geo = Geocode.create(:address => ret.first[:formatted_address], :lat => ret.first[:geometry][:location][:lat], :long => ret.first[:geometry][:location][:lng])

    render json: @geo
  end
end
