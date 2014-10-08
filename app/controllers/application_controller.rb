class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  def after_sign_in_path_for(source)
  	if signed_in?
  		house_path(current_user['house_key'])
  	else
  		return request.env['omniauth.origin'] || stored_location_for(resource) || houses_path
  	end
  end 
 

end
