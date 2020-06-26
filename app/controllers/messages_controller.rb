class MessagesController < ApplicationController
before_action :require_user, only: [:new,:create]
def new
@message = Message.new
@messages = Message.custom_display
end

def create
@message = Message.new(message_params)
@message.user = current_user
if @message.save
flash[:success]= "great is your name lord"
ActionCable.server.broadcast "message_channel",  
                              body: @message.body, user: @message.user.username
redirect_to signup_path 
end
end

def index

end



private
def message_params
params.require(:message).permit(:body)

end




end

