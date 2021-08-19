class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :kana_first_name, :kana_last_name, :postal_code, :address, :phone_number])
  end
  
  def after_inactive_sign_up_path_for(resource)
    edit_customer_path(resource)          
  end  
  
  def after_sign_in_path_for(resource)
    root_path(resource)
  end
end
