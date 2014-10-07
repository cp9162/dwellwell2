class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  def after_sign_in_path_for
  	return request.env['omniauth.origin'] || stored_location_for(:user => 'house_key') || houses_path
  end 

end
