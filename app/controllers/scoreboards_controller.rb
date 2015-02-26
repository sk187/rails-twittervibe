class ScoreboardsController < ApplicationController
	def index
		@scoreboard = current_user.scoreboards.all

		respond_to do |format|
			format.json {render :json => @scoreboard}
		end
	end
end

