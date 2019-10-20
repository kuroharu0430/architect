class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    case resource
    when User
      #User(一般ユーザ)がログインした時の処理
    when AdminUser
      #AdminUser（管理ユーザ）がログインしたときの処理
      stored_location_for(resource) ||
       if resource.is_a?(AdminUser)
         root_path
       else
         super
       end
    end
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
  end
end
