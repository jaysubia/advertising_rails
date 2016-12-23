class SessionsController < ApplicationController

# add restrictions for profile - only logged in user can go to profile. 
def index
@products = Product.all
@hash = Gmaps4rails.build_markers(@products) do |product, marker|
  marker.lat product.latitude
  marker.lng product.longitude
  marker.infowindow product.bench_number
	end
end

	def test
		@products = Product.all
  end


def logout
  if session[:user_id] != nil 
    session[:user_id] = nil
  elsif session[:rep_id] != nil
    session[:rep_id] = nil
  elsif session[:admin_id]!= nil
    session[:admin_id] = nil
  end
	reset_session
	redirect_to '/'
end

def profile

end


def login 
  admin = Administrator.find_by_email(params[:email])
  rep = Rep.find_by_email(params[:email])
  user = User.find_by_email(params[:email])
  if admin == nil && rep == nil
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		flash[:message] = "Hello #{user.first_name}!"
  		redirect_to '/users/index'
    end
  elsif admin == nil && user == nil
  	if rep && rep.authenticate(params[:password])
  		session[:rep_id] = rep.id
  		flash[:message] = "Hello #{rep.first_name}!"
  		redirect_to '/reps'
    end
  elsif rep == nil && user == nil
  	if admin && admin.authenticate(params[:password])
  		session[:admin_id] = admin.id
  		flash[:message] = "Hello #{admin.first_name}"
  		redirect_to '/administrators/index'
  	end
  else 
  	fail
  end
end
end
