class ChatroomsController < ApplicationController
#before_action :require_user , only: [:index]

def new
@user = User.new


end
def create
@user = User.new(user_params)
if @user.save
session[:user_id] = @user.id
flash[:success] = "welcome"
redirect_to signup_path
else
render :new
end
end
private
def user_params
params.require(:user).permit(:username, :password)
end

end