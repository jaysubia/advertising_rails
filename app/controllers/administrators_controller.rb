class AdministratorsController < ApplicationController

  def index
  	@admin = Administrator.find(1) #the number '1' should be replaced with the session[:id] ?
  	@reps = Rep.all
  end

end
