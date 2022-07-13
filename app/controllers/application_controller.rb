class ApplicationController < ActionController::Base
  before_action :config_permitted_params, if: :devise_controller?

  protected
  def config_permitted_params
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :email, :password, :password_confirmation) }
  end
end
