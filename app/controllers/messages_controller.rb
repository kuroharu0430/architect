class MessagesController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!

  def index
    @messages = @user.messages
    @message = Message.new
  end

  def create
    @message = @user.messages.new(message_params)
    if @message.save
    redirect_to user_messages_path
    else
      render action: :index
    end
  end


  private
  def message_params
    params.require(:message).permit(:text, :image).merge(user_id:current_user.id)
  end

  def set_user
    @user=User.find(params[:user_id])
  end
end
