
class UsersController < ApplicationController
	def index
		
		if user_signed_in?
			@tweets = twitter_client.user_timeline("Quant_LIfe").take(2)
			@id = current_user.id	
			Tweet.add_tweets_to_database(@tweets, @id)	
		end
	
	end

end
