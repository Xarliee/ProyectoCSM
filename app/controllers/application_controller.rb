class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :build_temporary_cart

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name, :region, :comuna, :mayor, :responsable, :role,  :info, :phone, :photo_cache, :photo]
  end


  def build_temporary_cart
    # This assumes that you check for logged in user using current_user
    session[:temporary_shopping_cart] = [] unless current_user
  end
end



