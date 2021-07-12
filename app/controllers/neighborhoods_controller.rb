class NeighborhoodsController < ApplicationController
	def index
    @neighborhoods = Neighborhood.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @neighborhoods.geocoded.map do |neighborhood|
      {
        lat: neighborhood.latitude,
        lng: neighborhood.longitude
      }
    end
  end
end
