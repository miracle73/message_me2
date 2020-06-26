class SessionsController < ApplicationController
before_action :logged_in_redirect ,only:[:new,:create]
def new


end
def create
user = User.find_by(username: params[:session][:username])
if user && user.authenticate(params[:session][:password])
session[:user_id] = user.id
flash[:success] = "you have sucessfully logged in"
redirect_to signup_path
else
flash.now[:error] = "Login information not correct"
render :new
end
end
def destroy
session[:user_id] = nil
flash[:error] = "you are logged out"
redirect_to login_path
end
private
 def logged_in_redirect
 if logged_in?
 flash[:success] = "You are already logged in"
 redirect_to signup_path
 end
end
end