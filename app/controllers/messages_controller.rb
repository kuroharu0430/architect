class MessagesController < ApplicationController
  before_action :set_user
  before_action :authenticate_user! unless :current_admin_user

  def index
    @messages = @user.messages
    @message = Message.new
  end

  def create
    @message = @user.messages.new(message_params)
    if current_admin_user
      @message.roll = 0
    else
      @message.roll = 1
    end
    
    if @message.save
    redirect_to user_messages_path
    else
      render action: :index
    end
  end


  private
  def message_params
    params.require(:message).permit(:text, :image)
  end

  def set_user
    @user=User.find(params[:user_id])
  end
end
