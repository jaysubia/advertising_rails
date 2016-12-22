class RepsController < ApplicationController

  def index
  	@rep = Rep.find(1)
  	@products = Rep.find(@rep.id).products
  end
end