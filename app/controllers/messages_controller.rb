class MessagesController < ApplicationController
  before_action :set_customer
  before_action :authenticate_customer! unless :current_admin_user
  before_action :redirect_to_root, unless: :current_admin_user

  def index
    @messages = @customer.messages
    @message = Message.new
  end

  def create
    @message = @customer.messages.new(message_params)
    if current_admin_user
      @message.roll = 0
    else
      @message.roll = 1
    end
    
    if @message.save
    redirect_to customer_messages_path
    else
      render action: :index
    end
  end


  private
  def message_params
    params.require(:message).permit(:text, :image)
  end

  def set_customer
    @customer=Customer.find(params[:customer_id])
  end

  def redirect_to_root
    if current_customer.id != params[:customer_id].to_i
      redirect_to root_path
    end
  end
end
