class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_host

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
  end

  def set_host
    Rails.application.routes.default_url_options[:host] = request.host_with_port
  end

  def after_sign_in_path_for(resource)
    case resource
    when Customer
      customer_messages_path(current_customer)
    when AdminUser
      stored_location_for(resource) ||
       if resource.is_a?(AdminUser)
         root_path
       else
         super
       end
    end
  end

  def after_sign_up_path_for(resource)
    case resource
    when Customer
      customer_messages_path(current_customer)
    when AdminUser
      stored_location_for(resource) ||
       if resource.is_a?(AdminUser)
         root_path
       else
         super
       end
    end
  end
  
  
end
