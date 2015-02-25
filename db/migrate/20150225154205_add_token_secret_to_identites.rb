class AddTokenSecretToIdentites < ActiveRecord::Migration
  def change
  	add_column :identities, :accesssecret, :string
  end
end
