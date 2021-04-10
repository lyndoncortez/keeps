class ApplicationController < ActionController::Base

  # layout :layout_by_controller

  # protected

  # def layout_by_controller
  #   devise_controller? ? 'devise' : 'application'
  # end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :password, :password_confirmation,   :current_password) } 
    end
end
