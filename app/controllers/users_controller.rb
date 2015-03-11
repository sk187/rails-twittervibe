
class UsersController < ApplicationController
	def index
		
		if user_signed_in?
			@id = current_user.id
			@identity = Identity.where(user_id: @id).first

			# TweetStream::Client.new.sample do |status|
 		# 		puts "#{status.text}"
			# end
		end
	end
end
