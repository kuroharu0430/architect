class CustomersController < ApplicationController
  before_action :authenticate_customer!, only: [:show]
  before_action :redirect_to_root,unless: :current_admin_user
  
  def show
    @customer = Customer.find(params[:id])
  end

  def redirect_to_root
    if current_customer.id != params[:id].to_i
      redirect_to root_path
    end
  end

end
