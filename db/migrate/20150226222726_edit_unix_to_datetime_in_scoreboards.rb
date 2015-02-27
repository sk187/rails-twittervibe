class EditUnixToDatetimeInScoreboards < ActiveRecord::Migration
  def change
  	remove_column :scoreboards, :unixtime 
  	add_column :scoreboards, :datetime , :string
  end
end
