class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :redirect_to_root, only: [:show]
  
  def show
    @user = User.find(params[:id])
  end

  def redirect_to_root
    if current_user.id != params[:id].to_i
      redirect_to root_path
    end
  end


end
