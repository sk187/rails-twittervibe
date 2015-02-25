class Tweet < ActiveRecord::Base
  belongs_to :user

  def self.add_tweets_to_database(tweets, id)
	
		tweets.each do |t|
			exist = Tweet.find_by(:id => t.id)
			if exist == nil
				Tweet.create(
					user_id: 1, # @id currently not working
					text: t.text, 
					tweetid: t.id,
					date: t.created_at
				)
			else
		
			end
		end
	end

	def self.analyze_tweet
		@unscored = Tweet.where(:sentimentscore => nil)
		tweet.text

   # 		  .replace(/[^a-zA-Z- ]+/g, '')
   #          .replace('/ {2,}/',' ')
   #          .toLowerCase()
   #          .split(' ');


	end
end