class ProductsController < ApplicationController

  def create
    product = Product.new(product_params)
    if product.save
    	redirect_to '/products'
    else
    	flash[:errors] = product.errors.full_messages
    	redirect_to '/'
    end
  end


  def index 
  	@products = Product.all
    @hash = Gmaps4rails.build_markers(@products) do |product, marker|
      marker.lat product.latitude
      marker.lng product.longitude
      marker.infowindow product.bench_number
    end

      
  end

  private 
  def product_params
    params.require(:product).permit(:street_address, :city, :zip, :rep_id, :bench_number, :traffic, :primary_street,  :direction, :secondary_street, :cor, :latitude, :longitude)
  end
end

