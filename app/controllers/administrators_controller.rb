class AdministratorsController < ApplicationController

  def index
  	@admin = Administrator.find(session[:admin_id])
  	@products = Product.all
  end

end
