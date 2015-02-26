class AddUnixTimeToTweets < ActiveRecord::Migration
  def change
  	add_column :tweets, :unixtime, :date
  end
end
