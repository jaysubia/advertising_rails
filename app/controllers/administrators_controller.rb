class AdministratorsController < ApplicationController

  def index
  	@admin = Administrator.find(session[:admin_id])
  	@reps = Rep.all
  end

end
