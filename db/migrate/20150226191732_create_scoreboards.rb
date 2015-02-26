class CreateScoreboards < ActiveRecord::Migration
  def change
    create_table :scoreboards do |t|
      t.references :user, index: true
      t.string :reference_date
      t.string :unixtime
      t.string :minscore
      t.string :maxscore
      t.string :avgscore
    end
    add_foreign_key :scoreboards, :users
  end
end
