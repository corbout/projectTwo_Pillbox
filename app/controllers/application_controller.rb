class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name, :l_name, :username, :address_line_one, :address_line_two, :city, :state, :zip, :country, :phone_number, :date_of_birth, :gender])
  end
end
