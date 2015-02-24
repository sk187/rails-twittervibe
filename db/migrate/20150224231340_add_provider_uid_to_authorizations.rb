class AddProviderUidToAuthorizations < ActiveRecord::Migration
  def change
  	add_column :authorizations, :user_id, :integer
  	add_column :authorizations, :provider, :string
    add_column :authorizations, :uid, :string
  end
end
