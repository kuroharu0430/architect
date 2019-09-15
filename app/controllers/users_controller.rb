class UsersController < ApplicationController
  before_action: set_user,except: :index

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit

  end

  def update
    @user = User.update(user_params)
  end

  def destory
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def set_user
    @user=User.find(params:id)
  
end
