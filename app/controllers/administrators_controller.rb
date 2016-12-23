class AdministratorsController < ApplicationController

  def index
  	@admin = Administrator.find(session[:admin_id])
  	@reps = Rep.all
  end

  def update
  	admin = Administrator.find(params[:id])
  	if admin.update(admin_params)
  	  flash[:message] = "Updated."
  	  redirect_to :back
  	else
  	  flash[:errors] = admin.errors.full_messages
  	  redirect_to :back
  	end
  end

  private
  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email)
  end	
end
