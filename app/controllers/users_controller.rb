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
  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:message] = "User Updated"
        redirect_to :back
      else
        flash[:errors] = @user.errors.full_messages
        flash[:message] = "Something went wrong"
        redirect_to :back
      end 
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
