class AddAdminFlagToUsers0 < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, default: false, null: false
  end
end
