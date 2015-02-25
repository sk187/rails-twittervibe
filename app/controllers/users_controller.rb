
class UsersController < ApplicationController
	def index
		@tweets = twitter_client.user_timeline("Quant_LIfe").take(4)
		
	end

end
