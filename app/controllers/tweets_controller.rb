class TweetsController < ApplicationController
	def index
		@all_tweets = current_user.tweets.all

		respond_to do |format|
			format.json {render :json => @all_tweets}
		end
	end
end
