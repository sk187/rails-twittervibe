class AddSentimentScoreToTweet < ActiveRecord::Migration
  def change
  		add_column :tweets, :sentimentscore, :string
  end
end
