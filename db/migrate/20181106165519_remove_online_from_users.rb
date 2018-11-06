class RemoveOnlineFromUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :admin, :boolean, default: false, null: false
  end
end
