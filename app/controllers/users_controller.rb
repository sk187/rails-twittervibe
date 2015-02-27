
class UsersController < ApplicationController
	def index
		
		if user_signed_in?
			@tweets = twitter_api.user_timeline("#{current_user.username}").take(100)  #"Quant_LIfe"
			@id = current_user.id	
			Tweet.add_tweets_to_database(@tweets, @id)

			# TweetStream::Client.new.sample do |status|
 		# 		puts "#{status.text}"
			# end
		end
	end
end
