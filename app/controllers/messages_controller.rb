class MessagesController < ApplicationController
  before_action :authenticate_customer! ,unless: :current_admin_user
  before_action :ensure_customer ,unless: :current_admin_user
  before_action :set_customer


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
    else
      @messages =@customer.messages
      flash.now[:alert] ='メッセージを入力してください'
      render :index
    end
  end

  def auto
    @messages = @customer.messages
    last_message_id = params[:id].to_i
    @messages =@customer.messages.includes(:customer).where("id > #{last_message_id}")
    if @messages.present?
      @id = 1
    else
      @id = 0
    end
  end


  private
  def message_params
    params.require(:message).permit(:text, :image)
  end

  def set_customer
    @customer=Customer.find(params[:customer_id])
  end

  def ensure_customer
    if current_customer.id != params[:customer_id].to_i
      redirect_to root_path
    end
  end
end
