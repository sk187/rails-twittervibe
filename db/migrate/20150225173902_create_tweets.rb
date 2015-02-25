class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :user, index: true
      t.string :text
      t.integer :id
      t.string :date

      t.timestamps null: false
    end
    add_foreign_key :tweets, :users
  end
end
