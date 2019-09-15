class MessagesController < ApplicationController
  class UsersController < ApplicationController
    before_action: :set_user
  
    def index
      @users = User.all
    end
  
    def show
    end
  
    def new
      @user = User.new
    end
  
    def create
      @user = @user.masseges.new(message_params)
    end
  
    def edit
    end
  
    def update
    end
  
    def destory
    end
  
    private
    def message_params
      params.require(:user).permit(:name, :email, :password)
    end
  
    def set_user
      @user=User.find(params:id)
    
  end
end
