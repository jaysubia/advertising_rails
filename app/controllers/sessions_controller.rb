class SessionsController < ApplicationController

	def index
	@products = Product.all
    @hash = Gmaps4rails.build_markers(@products) do |product, marker|
      marker.lat product.latitude
      marker.lng product.longitude
      marker.infowindow product.bench_number
		end
	end

	def logout
		reset_session
    	redirect_to '/'
	end

end