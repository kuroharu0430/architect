class MessagesController < ApplicationController
  before_action :set_user
  def index
    @message = Message.new
    @messages =@user.messages.includes(:user)

  end

  def create
    @message = @user.messages.new(message_params)
    if @message
      redirect_to action: :index
    end
  end


  private 
  def message_params
    params.require(:message).permit(:text, :image).merge(user_id:params[:user_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end



