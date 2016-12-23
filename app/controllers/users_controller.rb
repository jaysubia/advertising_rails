class UsersController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
  end
  def create
    @user = User.create( user_params )
  end
  def new
  	@rep = Rep.find(session[:rep_id])
  end

  def show

  end

  private
  def user_params
    params.require(:user).permit(:avatar)
  end
end
