class WelcomeController < ApplicationController
	def index
		if current_user
			redirect_to ('/houses/' + current_user.house_key)
		end
	end
end