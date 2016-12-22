class AdministratorsController < ApplicationController

  def index
  	@admin = Administrator.find(1)
  	@products = Product.all
  end

end
