class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
  end

  def after_sign_up_path_for(resource)
    customer_messages_path(current_customer)
  end

  def after_sign_in_path_for(resource)
    customer_messages_path(current_customer)
  end
  
end
