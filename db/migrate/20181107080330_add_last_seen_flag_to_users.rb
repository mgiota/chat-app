class AddLastSeenFlagToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_seen, :string
  end
end
