class RepsController < ApplicationController

  def index
  	@rep = Rep.find(1)  #the number '1' should be replaced with the session[:id] ?
  	@products = Rep.find(@rep.id).products
  end
end