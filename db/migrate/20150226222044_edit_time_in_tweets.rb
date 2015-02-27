class EditTimeInTweets < ActiveRecord::Migration
  def change
  	remove_column :tweets, :unixtime
  	add_column :tweets, :datetime, :string
  end
end
