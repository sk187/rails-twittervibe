class ScoreboardsController < ApplicationController
	def index
		@scoreboard = current_user.scoreboards.all.order(:datetime)

		respond_to do |format|
			format.json {render :json => @scoreboard}
		end
	end

	def show
	
	end
end

