class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  def after_sign_in_path_for(source)
  	if (current_user['house_key'] == 0)
  		return request.env['omniauth.origin'] || current_user['house_key'] || houses_path
  	else
  		return request.env['omniauth.origin'] || houses_path
  	end
  end 
  def after_sign_up_path_for(source)
  	redirect houses_path
 	end

end
