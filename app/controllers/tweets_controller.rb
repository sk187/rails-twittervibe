class TweetsController < ApplicationController
	def index
		@all_tweets = current_user.tweets.all.order(:datetime)

		respond_to do |format|
			format.json {render :json => @all_tweets}
		end
	end

	def new
		@identity = Identity.where(user_id: params[:user_id]).first
		@id = params[:user_id]
		Tweet.get_old_tweets(@id, @identity)
		redirect_to root_path
	end

	def show
		@identity = Identity.where(user_id: params[:user_id]).first
		@id = params[:user_id]
	end
end
