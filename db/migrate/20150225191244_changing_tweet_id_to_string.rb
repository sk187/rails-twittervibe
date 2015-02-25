class ChangingTweetIdToString < ActiveRecord::Migration
  def change
  	remove_column :tweets, :tweetid
  	add_column :tweets, :tweetid, :string
  end
end
