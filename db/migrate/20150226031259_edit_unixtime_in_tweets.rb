class EditUnixtimeInTweets < ActiveRecord::Migration
  def change
  	remove_column :tweets, :unixtime
  	add_column :tweets, :unixtime, :string
  end
end
