class AddColumnToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :topic, :string
  end
end
