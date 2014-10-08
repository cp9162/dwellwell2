class WelcomeController < ApplicationController
	def index
		if signed_in?
			redirect_to('/houses/'+ current_user['house_key'])
		end
	end
end