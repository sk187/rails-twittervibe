class SessionsController < ApplicationController
	def create
		@user = User.find_or_create_from_auth_hash(env['omniauth.auth'])
		self.current_user = @user
		redirect_to root_path
	end


end
