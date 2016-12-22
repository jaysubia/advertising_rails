class RepsController < ApplicationController

  def index
  	@rep = Rep.find(1)
  	@products = Rep.find(@rep.id).products
  end

  def update
      @rep = Rep.find(params[:id])
      if @rep.update(rep_params)
        flash[:message] = "Rep Updated"
        redirect_to :back
      else
        flash[:message] = "Something went wrong"
        redirect_to :back
      end 
  end

  def create
    fail
  end


  def edit 
    @rep = Rep.find(params[:id])
  end

  def show
    @rep = Rep.find(params[:id])
  end

  private 
  def rep_params
    params.require(:rep).permit(:first_name, :last_name, :email, :password, :phone, :administrator_id, :image)
  end
end