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

  def update
      @product = Product.find(params[:id])
      if @product.update(product_params)
        flash[:message] = "Product Updated"
        redirect_to :back
      else
        flash[:message] = "Something went wrong"
        redirect_to :back
      end 
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end
 
  def index 
   
    end

      

  private 
  def product_params
    params.require(:product).permit(:street_address, :city, :zip, :rep_id, :bench_number, :traffic, :primary_street,  :direction, :secondary_street, :cor, :latitude, :longitude, :image)
  end
end

