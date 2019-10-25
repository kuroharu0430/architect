class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :redirect_to_login, 
  
  def show
  end

  def redirect_to_login
    if current_user.nil?
      redirect_to root_path
    end
  end
end
