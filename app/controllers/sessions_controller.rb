class SessionsController < ApplicationController

	def index
	@products = Product.all
    @hash = Gmaps4rails.build_markers(@products) do |product, marker|
      marker.lat product.latitude
      marker.lng product.longitude
      marker.infowindow product.primary_street

		end
	end

	def test
		@products = Product.all
	end

	def logout
		reset_session
    	redirect_to '/'
	end

end