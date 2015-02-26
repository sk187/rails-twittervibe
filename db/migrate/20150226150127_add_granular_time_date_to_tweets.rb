class AddGranularTimeDateToTweets < ActiveRecord::Migration
  def change
  	add_column :tweets, :year, :string
  	add_column :tweets, :month, :string
  	add_column :tweets, :day, :string
  	add_column :tweets, :hour, :string
  	add_column :tweets, :minutes, :string
  	add_column :tweets, :seconds, :string
  end
end
